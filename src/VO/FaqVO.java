package VO;

import java.io.Serializable;

public class FaqVO implements Serializable{
	private int faq_id;
	private String val_question;
	private String val_answer;
	private FaqCategoryVO faqCategoryVO;
	public FaqCategoryVO getFaqCategoryVO() {
		return faqCategoryVO;
	}
	public void setFaqCategoryVO(FaqCategoryVO faqCategoryVO) {
		this.faqCategoryVO = faqCategoryVO;
	}
	public int getFaq_id() {
		return faq_id;
	}
	public void setFaq_id(int faq_id) {
		this.faq_id = faq_id;
	}
	public String getVal_question() {
		return val_question;
	}
	public void setVal_question(String val_question) {
		this.val_question = val_question;
	}
	public String getVal_answer() {
		return val_answer;
	}
	public void setVal_answer(String val_answer) {
		this.val_answer = val_answer;
	}

}
