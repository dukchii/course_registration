package com.university.dkhp.service.semester;

public interface SemesterService {
    void setCurrentSemester(Integer id);
    void toggleRegistration(Integer id, boolean status);
}