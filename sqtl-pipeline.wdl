
version 1.0

# import other WDLs
import "tasks/merge_bam_by_donor.wdl" as merge_bam_by_donor

# This workflow tests the merge bam task
workflow subwf_merge_bams {
  input {
    Array[File] bams # list of bams for one donor
    String prefix # donor name
  }

  call merge_bam_by_donor.merge_bam_task as merge_bams {
    input:
    bams=bams, 
    prefix=prefix
  }

  output {
    File merge_output=merge_bams.merge_output
  }
}

# version 1.0

# # import other WDLs
# import "tasks/merge_bam_by_donor.wdl" as merge_bam_by_donor

# # This workflow takes cellranger data to sQTLs
# workflow sQTL_pipeline {
#   input {
#     Array[String] samples # list of donors
#   }

#   call merge_bam_by_donor {
    
#   }
# }