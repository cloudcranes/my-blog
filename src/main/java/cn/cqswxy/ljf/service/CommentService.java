package cn.cqswxy.ljf.service;

import cn.cqswxy.ljf.po.Comment;

import java.util.List;

public interface CommentService {

    List<Comment> listCommentByBlogId(Long blogId);

    Comment saveComment(Comment comment);
}
