package chap07.event;

import java.util.Collection;
import java.util.Date;

public class SearchOption {
	private Collection<EventType> types;
	private boolean allType;
	private Date from;
	private Date to;
	
	public Collection<EventType> getTypes() {
		return types;
	}
	public void setTypes(Collection<EventType> types) {
		this.types = types;
	}
	public boolean isAllType() {
		//null값이면 allType으로 보여줘라
		return allType || types == null;
	}
	public void setAllType(boolean allType) {
		this.allType = allType;
	}
	public Date getFrom() {
		return from;
	}
	public void setFrom(Date from) {
		this.from = from;
	}
	public Date getTo() {
		return to;
	}
	public void setTo(Date to) {
		this.to = to;
	}
	
	
	
	
}
