version 1.0

# import other WDLs
import "tasks/merge_bam_by_donor.wdl" as merge_bam_by_donor

# This workflow takes cellranger data to sQTLs
workflow sQTL_pipeline {
  input {
    Array[String] samples # list of donors
  }
}