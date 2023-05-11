package models;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
//SQL文にgetAllTaskListsという名前をつけた
@NamedQueries({
    @NamedQuery(
            name = "getAllTaskLists",
            query = "SELECT m FROM taskList AS m ORDER BY m.id"
            )
})
@Table(name = "taskLists")
public class taskList {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    //タスク名
    @Column(name = "taskName", length = 255, nullable = false)
    private String taskName;

    //タスク詳細
    @Column(name = "taskDetail", length = 255, nullable = false)
    private String taskDetail;

    //タスク追加日
    @Column(name = "addedDay")
    private Timestamp addedDay;

    //タスク締め切り
    @Column(name = "deadLine")
    private Timestamp deadLine;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public String  getTaskDetail() {
        return taskDetail;
    }

    public void setTaskDetail(String detail) {
        taskDetail = detail;
    }

    public Timestamp getAddedDay() {
        return addedDay;
    }

    public void setAddedDay(Timestamp add) {
        addedDay = add;
    }

    public Timestamp getDeadLine() {
        return deadLine;
    }

    public void setDeadLine(Timestamp date) {
        deadLine = date;
    }
}
