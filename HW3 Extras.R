```{r}
recipe_obj <- recipe(Attrition ~ ., data = data) %>%
    step_zv(all_predictors())  %>%
    step_dummy(all_vars())
recipe_obj %>% 
    prep()
```



ridge_spec <- logistic_reg(
    penalty = tune(), 
    mixture = 0,
    family = binomial()
) 
