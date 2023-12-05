package com.example.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;


    public int insertBoard(BoardVO vo) {
        String sql = "insert into BOARD (bookTItle, Bookwriter, publisher, publicationDate, regNumber, isbn, leftBook) values ("
                + "'" + vo.getBookTitle() + "',"
                + "'" + vo.getBookWriter() + "',"
                + "'" + vo.getPublisher() + "',"
                + "'" + vo.getPublicationDate() + "',"
                + "'" + vo.getRegNumber() + "',"
                + "'" + vo.getIsbn() + "',"
                + "'" + vo.getLeftBook() + "')";
        return jdbcTemplate.update(sql);
    }
    public int deleteBoard(int seq) {
        String sql = "delete from BOARD where seq = " + seq;
        return jdbcTemplate.update(sql);
    }
    public int updateBoard(BoardVO vo) {
        String sql = "update BOARD set title ='"
                + vo.getBookTitle() + "',"
                + " bookTitle='" + vo.getBookTitle() + "',"
                + " bookWriter='" + vo.getBookWriter() + "',"
                + " publisher='" + vo.getPublisher() + "',"
                + " publicationDate='" + vo.getPublicationDate() + "',"
                + " regNumber='" + vo.getRegNumber() + "',"
                + " isbn='" + vo.getIsbn() + "',"
                + " leftBook='" + vo.getLeftBook() + "' where seq =" + vo.getSeq();
        return jdbcTemplate.update(sql);
    }

    class BoardRowMapper implements RowMapper<BoardVO>{
        @Override
        public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException{
            BoardVO vo = new BoardVO();
            vo.setSeq(rs.getInt("seq"));
            vo.setBookTitle(rs.getString("bookTitle"));
            vo.setBookWriter(rs.getString("bookWriter"));
            vo.setPublisher(rs.getString("publisher"));
            vo.setPublicationDate(rs.getDate("publicationDate"));
            vo.setRegNumber(rs.getString("regNumber"));
            vo.setIsbn(rs.getString("isbn"));
            vo.setLeftBook(rs.getInt("leftBook"));
            return vo;
        }
    }
    public BoardVO getBoard(int seq) {
        String sql = "select * from BOARD where seq=" + seq;
        return jdbcTemplate.queryForObject(sql, new BoardRowMapper());

    }
    public List<BoardVO> getBoardList() {
        String sql = "select * from BOARD order by publicationDate desc";
        return jdbcTemplate.query(sql, new BoardRowMapper());
    }
}
