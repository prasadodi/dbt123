{%- set country=['usa','uk','japan','germany'] -%}

{%- for country in country  -%}
My country name is :{{ country |capitalize }}
{% endfor %}