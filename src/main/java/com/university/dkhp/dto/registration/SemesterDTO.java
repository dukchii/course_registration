package com.university.dkhp.dto.registration;

public class SemesterDTO {

    private Integer semesterId;
    private String term;
    private Integer year;

    public SemesterDTO() {}

    public Integer getSemesterId() {
        return semesterId;
    }

    public void setSemesterId(Integer semesterId) {
        this.semesterId = semesterId;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }
}