package com.github.sirlacky.OHASM.domain.repositories;

import com.github.sirlacky.OHASM.domain.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface EmployeeRepository extends JpaRepository<Employee,Long> {


}
