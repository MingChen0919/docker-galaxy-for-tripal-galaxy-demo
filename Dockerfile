# Galaxy REPLACEMENT
#
# VERSION 0.1

FROM quay.io/bgruening/galaxy:17.01

MAINTAINER Ming Chen, ming.chen0919@gmail.com

ENV GALAXY_CONFIG_BRAND "Tripal Galaxy Demo"


##--------- Install necessary tools -------------
ADD tool_yml_files/fastq_groomer.yml $GALAXY_ROOT/tool_yml_files/fastq_groomer.yml
RUN install-tools $GALAXY_ROOT/tool_yml_files/fastq_groomer.yml

ADD tool_yml_files/fastqc.yml $GALAXY_ROOT/tool_yml_files/fastqc.yml
RUN install-tools $GALAXY_ROOT/tool_yml_files/fastqc.yml

ADD tool_yml_files/hisat2.yml $GALAXY_ROOT/tool_yml_files/hisat2.yml
RUN install-tools $GALAXY_ROOT/tool_yml_files/hisat2.yml

ADD tool_yml_files/samtools_flagstat.yml $GALAXY_ROOT/tool_yml_files/samtools_flagstat.yml
RUN install-tools $GALAXY_ROOT/tool_yml_files/samtools_flagstat.yml

ADD tool_yml_files/trimmomatic.yml $GALAXY_ROOT/tool_yml_files/trimmomatic.yml
RUN install-tools $GALAXY_ROOT/tool_yml_files/trimmomatic.yml



ADD tool_yml_files/rmarkdown_fastqc_report.yml $GALAXY_ROOT/tool_yml_files/rmarkdown_fastqc_report.yml
RUN install-tools $GALAXY_ROOT/tool_yml_files/rmarkdown_fastqc_report.yml

ADD tool_yml_files/rmarkdown_wgcna.yml $GALAXY_ROOT/tool_yml_files/rmarkdown_wgcna.yml
RUN install-tools $GALAXY_ROOT/tool_yml_files/rmarkdown_wgcna.yml

ADD tool_yml_files/rmarkdown_bdss_client.yml $GALAXY_ROOT/tool_yml_files/rmarkdown_bdss_client.yml
RUN install-tools $GALAXY_ROOT/tool_yml_files/rmarkdown_bdss_client.yml


##---- install bdss -------
RUN /tool_deps/_conda/bin/pip install bdss-client

