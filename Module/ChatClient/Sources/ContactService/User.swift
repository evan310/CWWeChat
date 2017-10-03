//
//  User.swift
//  ChatClient
//
//  Created by chenwei on 2017/10/3.
//  Copyright © 2017年 chenwei. All rights reserved.
//

import Foundation

public class User: NSObject {
    // 聊天账号
    public var username: String
    // 昵称
    public var nickname: String
    // 头像
    public var avatarUrl: URL
    /// 详细信息
    public var userInfo: UserInfo?
    
    public init(username: String, nickname: String, avatarUrl: URL) {
        self.username = username
        self.nickname = nickname
        self.avatarUrl = avatarUrl
    }    
}

public class UserInfo: NSObject {
    // 真实名称
    var realname: String?
    // 备注
    var alias: String?
    // 签名
    var sign: String?
    // email
    var email: String?
    
    public override var description: String {
        return "nickName:\(realname ?? "未设置"), sign:\(sign ?? "未设置")"
    }
}
