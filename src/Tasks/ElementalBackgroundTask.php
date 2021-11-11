<?php

namespace NSWDPC\Waratah\Tasks;

use SilverStripe\Dev\BuildTask;
use SilverStripe\ORM\DB;
use SilverStripe\Core\Convert;
use DNADesign\Elemental\Models\BaseElement;

/**
 * @author James and Mark
 * Update background field to null or correct value
 */
class ElementalBackgroundTask extends BuildTask
{

    protected $title = 'Update elemental background value';

    private static $segment = "ElementalBackgroundTask";

    private $task = '';
    private $publish = false;
    private $commit = false;

    public function run($request)
    {
        $this->task = $request->getVar('task');
        $this->publish = $request->getVar('publish') == 1;
        $this->commit = $request->getVar('commit') == 1;

        if($this->commit) {
            DB::alteration_message("Commit changes is on", "changed");
        } else {
            DB::alteration_message("Commit changes is off, pass commit=1 as an argument when ready", "changed");
        }

        if($this->publish) {
            DB::alteration_message("Publish changes is on, where applicable", "changed");
        } else {
            DB::alteration_message("Publish changes is off, pass publish=1 as an argument when ready", "changed");
        }

        if(empty($this->task)) {
            DB::alteration_message("No task provided - provide a task", "error");
            $this->dumpMethods();
            return false;
        }

        $upgradeMethod = "upgrade_{$this->task}";


        if(method_exists($this, $upgradeMethod)) {
            $this->{$upgradeMethod}();
        } else {
            DB::alteration_message("Task method {$this->task} does not exist", "error");
            $this->dumpMethods();
            return false;
        }
    }

    private function dumpMethods() {
        $methods = get_class_methods($this);
        foreach($methods as $method) {
            if(strpos($method, "upgrade_") === 0) {
                $taskMethod = preg_replace("/^upgrade_/", "", $method);
                DB::alteration_message("Upgrade method '{$taskMethod}' is available, review the code comments");
            }
        }
    }

    /**
     * Updates background for variable options
     */
    protected function upgrade_ElementalBackground() {

        $defaultValue = "light-10";

        $sqlRemove = "UPDATE `Element` SET AddBackground = NULL WHERE AddBackground = 0";
        $sqlUpdate = "UPDATE `Element` SET AddBackground = '" . $defaultValue . "' WHERE AddBackground = 1";

        if($this->commit) {
            DB::query($sqlRemove);
            DB::query($sqlUpdate);
            DB::alteration_message("Rows: " . DB::affected_rows(), "changed");
        } else {
            DB::alteration_message("Would remove background: {$sqlRemove}");
            DB::alteration_message("Would apply background: {$sqlUpdate}");
        }
        if($this->publish) {
            $sqlRemove = "UPDATE `Element_Live` SET AddBackground = NULL WHERE AddBackground = 0";
            $sqlUpdate = "UPDATE `Element_Live` SET AddBackground = '" . $defaultValue . "' WHERE AddBackground = 1";
            if($this->commit) {
                DB::query($sqlRemove);
                DB::query($sqlUpdate);
                DB::alteration_message("Rows: " . DB::affected_rows(), "changed");
            } else {
                DB::alteration_message("Would remove background (published): {$sqlRemove}");
                DB::alteration_message("Would apply background (published): {$sqlUpdate}");
            }
        }
    }

}
