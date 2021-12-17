#! /usr/bin/bash

source /etc/profile.d/modules.sh
module load python/anaconda
source activate tesi

# for output
OUTDIR="/home/curnis/result/pointlk_rev/test/result"
mkdir -p ${OUTDIR}

# Python3 command
PY3="python"

# categories for testing and the trained model
MODEL="/home/curnis/result/pointlk_rev/train_200_gtav_mag02/PointLKRev_200_mag02_model_best.pth"
CMN="--dataset_path /media/RAIDONE/curnis/GTAVDataset --categoryfile ./dataset/test_gtav.txt --pretrained ${MODEL} --dataset_type gtav --workers 4 --data_type synthetic"

# perturbations
PERDIR="/home/curnis/result/pointlk/test/PointNetLK_200_GTAV_mag04"

# test PointNet-LK with given perturbations (see. 'ex1_genrot.sh' for perturbations)
#${PY3} test.py ${CMN} --outfile ${OUTDIR}/result_00.csv --statistics ${OUTDIR}/stat00.csv --pose_file ${PERDIR}/pert_00.csv -l ${OUTDIR}/result00.log
#${PY3} test.py ${CMN} --outfile ${OUTDIR}/result_01.csv --statistics ${OUTDIR}/stat01.csv --pose_file ${PERDIR}/pert_01.csv -l ${OUTDIR}/result01.log
#${PY3} test.py ${CMN} --outfile ${OUTDIR}/result_02.csv --statistics ${OUTDIR}/stat02.csv --pose_file ${PERDIR}/pert_02.csv -l ${OUTDIR}/result02.log
#${PY3} test.py ${CMN} --outfile ${OUTDIR}/result_03.csv --statistics ${OUTDIR}/stat03.csv --pose_file ${PERDIR}/pert_03.csv -l ${OUTDIR}/result03.log
#${PY3} test.py ${CMN} --outfile ${OUTDIR}/result_04.csv --statistics ${OUTDIR}/stat04.csv --pose_file ${PERDIR}/pert_04.csv -l ${OUTDIR}/result04.log
#${PY3} test.py ${CMN} --outfile ${OUTDIR}/result_05.csv --statistics ${OUTDIR}/stat05.csv --pose_file ${PERDIR}/pert_05.csv -l ${OUTDIR}/result05.log
${PY3} test.py ${CMN} --outfile ${OUTDIR}/result_06.csv --statistics ${OUTDIR}/stat06.csv --pose_file ${PERDIR}/pert_06.csv -l ${OUTDIR}/result06.log
#${PY3} test.py ${CMN} --outfile ${OUTDIR}/result_07.csv --statistics ${OUTDIR}/stat07.csv --pose_file ${PERDIR}/pert_07.csv -l ${OUTDIR}/result07.log
#${PY3} test.py ${CMN} --outfile ${OUTDIR}/result_08.csv --statistics ${OUTDIR}/stat08.csv --pose_file ${PERDIR}/pert_08.csv -l ${OUTDIR}/result08.log
#${PY3} test.py ${CMN} --outfile ${OUTDIR}/result_09.csv --statistics ${OUTDIR}/stat09.csv --pose_file ${PERDIR}/pert_09.csv -l ${OUTDIR}/result09.log
#${PY3} test.py ${CMN} --outfile ${OUTDIR}/result_10.csv --statistics ${OUTDIR}/stat10.csv --pose_file ${PERDIR}/pert_10.csv -l ${OUTDIR}/result10.log

#EOF
