version 1.0
  
task merge_bam_task {
  input {
    Array[File] bams
    String prefix # merged output will be [prefix].bam
  }

  Int disk_space=ceil(size(bams[0], "GB") * 4) + 10

  command {
    samtools merge ${prefix}.bam ${sep=' ' bams}
  }

  output {
    File merge_output = "${prefix}.bam"
  }

  runtime {
    docker: "biocontainers/samtools:v1.9-4-deb_cv1"
    disks: "local-disk ${disk_space} HDD"
  }
}    