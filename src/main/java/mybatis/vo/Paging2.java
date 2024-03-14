package mybatis.vo;

import java.util.Map;

import lombok.Getter;
import lombok.ToString;


private String search;
private String kind;

// Getter & Setter
public String getSearch() {
	if(this.search == null) {
		this.search = "";
	}
	return search;
}

public void setSearch(String search) {
	this.search = search;
}

public String getKind() {
	return kind;
}

public void setKind(String kind) {
	this.kind = kind;

}



