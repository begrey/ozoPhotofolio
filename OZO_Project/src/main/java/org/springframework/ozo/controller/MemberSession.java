package org.springframework.ozo.controller;

import java.io.Serializable;

import org.springframework.ozo.domain.Member;

@SuppressWarnings("serial")

public class MemberSession implements Serializable{
	
	private Member member;
	private int event = 0;
	
	public MemberSession(Member member) {
		this.member = member;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
		
	}

	public int getEvent() {
		return event;
	}

	public void setEvent(int event) {
		this.event = event;
	}



}
