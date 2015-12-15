/*
 * @(#)Encrypet.java	1.0 2016年3月17日 下午6:48:22
 *
 * Copyright 2004-2010 Client Server International, Inc. All rights reserved.
 * CSII PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.ziquan.util;

import org.jasypt.util.text.BasicTextEncryptor;

/**
 * {type specification, must edit}
 *
 * @author  SuperMan {must edit, use true name}
 * <p>
 *   Created on 2016年3月17日
 *   Modification history	
 *   {add your history}
 * </p>
 * <p>
 *   IBS Product Expert Group, CSII
 *   Powered by CSII PowerEngine 6.0
 * </p>
 * @version 1.0
 * @since 1.0
 */
public class Encrypet {
	public static void main(String[] args) {  
        //PBEWithMD5AndDES  
        BasicTextEncryptor encryptor = new BasicTextEncryptor();  
        encryptor.setPassword("root");  
        String encrypted = encryptor.encrypt("xx");  
        System.out.println(encrypted);  
    } 
}
