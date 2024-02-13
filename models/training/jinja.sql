{%- set country=['usa','uk','japan','germany'] -%}

{%- for country in country |capitalize -%}
My country name is :{{ country }}
{% endfor %}