use optuna;
select t.study_id, t.number, tv.value from trial_values as tv join trials as t on tv.trial_id = t.trial_id
where study_id = 18 order by tv.value desc;