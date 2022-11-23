package com.quizz.repositories;

import java.util.Set;

import com.quizz.models.Option;

public interface OptionRepository {

	void saveAll(Set<Option> of);

}
