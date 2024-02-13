{% marco update_rundate() %}

update Model_Param
set rundate =rundate+7
where MODEL_NAME='STG_PRODUCT'

{% endmarco %}