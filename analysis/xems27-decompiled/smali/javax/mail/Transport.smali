.class public abstract Ljavax/mail/Transport;
.super Ljavax/mail/Service;
.source "Transport.java"


# instance fields
.field private volatile transportListeners:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 1
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .line 76
    invoke-direct {p0, p1, p2}, Ljavax/mail/Service;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    .line 77
    return-void
.end method

.method public static send(Ljavax/mail/Message;)V
    .locals 2
    .param p0, "msg"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 124
    invoke-virtual {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static send(Ljavax/mail/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljavax/mail/Message;
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 174
    invoke-virtual {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public static send(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .locals 1
    .param p0, "msg"    # Ljavax/mail/Message;
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 146
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static send(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljavax/mail/Message;
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Ljavax/mail/Message;->saveChanges()V

    .line 202
    invoke-static {p0, p1, p2, p3}, Ljavax/mail/Transport;->send0(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method private static send0(Ljavax/mail/Message;[Ljavax/mail/Address;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p0, "msg"    # Ljavax/mail/Message;
    .param p1, "addresses"    # [Ljavax/mail/Address;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 209
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "No recipient addresses"

    if-eqz v2, :cond_16

    array-length v4, v2

    if-eqz v4, :cond_16

    .line 216
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 219
    .local v4, "protocols":Ljava/util/Hashtable;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 220
    .local v5, "invalid":Ljava/util/Vector;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 221
    .local v6, "validSent":Ljava/util/Vector;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 223
    .local v7, "validUnsent":Ljava/util/Vector;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v2

    if-lt v8, v9, :cond_14

    .line 236
    .end local v8    # "i":I
    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v8

    .line 237
    .local v8, "dsize":I
    if-eqz v8, :cond_13

    .line 240
    iget-object v0, v1, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    if-eqz v0, :cond_0

    iget-object v0, v1, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    goto :goto_1

    .line 241
    :cond_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const/4 v9, 0x0

    invoke-static {v0, v9}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    .line 240
    :goto_1
    move-object v9, v0

    .line 247
    .local v9, "s":Ljavax/mail/Session;
    const/4 v10, 0x0

    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    .line 248
    aget-object v0, v2, v10

    invoke-virtual {v9, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v10

    .line 250
    .local v10, "transport":Ljavax/mail/Transport;
    if-eqz v3, :cond_1

    .line 251
    move-object/from16 v11, p3

    :try_start_0
    invoke-virtual {v10, v3, v11}, Ljavax/mail/Transport;->connect(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 253
    :cond_1
    move-object/from16 v11, p3

    invoke-virtual {v10}, Ljavax/mail/Transport;->connect()V

    .line 254
    :goto_2
    invoke-virtual {v10, v1, v2}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    nop

    .line 256
    invoke-virtual {v10}, Ljavax/mail/Transport;->close()V

    .line 258
    return-void

    .line 255
    :catchall_0
    move-exception v0

    .line 256
    invoke-virtual {v10}, Ljavax/mail/Transport;->close()V

    .line 257
    throw v0

    .line 265
    .end local v10    # "transport":Ljavax/mail/Transport;
    :cond_2
    move-object/from16 v11, p3

    const/4 v0, 0x0

    .line 266
    .local v0, "chainedEx":Ljavax/mail/MessagingException;
    const/4 v12, 0x0

    .line 268
    .local v12, "sendFailed":Z
    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v13

    .line 269
    .local v13, "e":Ljava/util/Enumeration;
    move/from16 v20, v12

    move-object v12, v0

    .end local v0    # "chainedEx":Ljavax/mail/MessagingException;
    .local v12, "chainedEx":Ljavax/mail/MessagingException;
    .local v20, "sendFailed":Z
    :goto_3
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_8

    .line 323
    if-nez v20, :cond_4

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    .line 342
    :cond_3
    return-void

    .line 324
    :cond_4
    :goto_4
    const/4 v0, 0x0

    .local v0, "a":[Ljavax/mail/Address;
    const/4 v10, 0x0

    .local v10, "b":[Ljavax/mail/Address;
    const/4 v14, 0x0

    .line 327
    .local v14, "c":[Ljavax/mail/Address;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v15

    if-lez v15, :cond_5

    .line 328
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v15

    new-array v0, v15, [Ljavax/mail/Address;

    .line 329
    invoke-virtual {v6, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 331
    :cond_5
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v15

    if-lez v15, :cond_6

    .line 332
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v15

    new-array v10, v15, [Ljavax/mail/Address;

    .line 333
    invoke-virtual {v7, v10}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 335
    :cond_6
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v15

    if-lez v15, :cond_7

    .line 336
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v15

    new-array v14, v15, [Ljavax/mail/Address;

    .line 337
    invoke-virtual {v5, v14}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move-object/from16 v21, v14

    goto :goto_5

    .line 335
    :cond_7
    move-object/from16 v21, v14

    .line 339
    .end local v14    # "c":[Ljavax/mail/Address;
    .local v21, "c":[Ljavax/mail/Address;
    :goto_5
    new-instance v22, Ljavax/mail/SendFailedException;

    .line 340
    nop

    .line 339
    const-string v15, "Sending failed"

    move-object/from16 v14, v22

    move-object/from16 v16, v12

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    move-object/from16 v19, v21

    invoke-direct/range {v14 .. v19}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v22

    .line 270
    .end local v0    # "a":[Ljavax/mail/Address;
    .end local v10    # "b":[Ljavax/mail/Address;
    .end local v21    # "c":[Ljavax/mail/Address;
    :cond_8
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/Vector;

    .line 271
    .local v14, "v":Ljava/util/Vector;
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v15, v0, [Ljavax/mail/Address;

    .line 272
    .local v15, "protaddresses":[Ljavax/mail/Address;
    invoke-virtual {v14, v15}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 275
    aget-object v0, v15, v10

    invoke-virtual {v9, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v0

    move-object/from16 v16, v0

    .local v16, "transport":Ljavax/mail/Transport;
    if-nez v0, :cond_a

    .line 278
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_6
    array-length v10, v15

    if-lt v0, v10, :cond_9

    .line 280
    .end local v0    # "j":I
    goto :goto_7

    .line 279
    .restart local v0    # "j":I
    :cond_9
    aget-object v10, v15, v0

    invoke-virtual {v5, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    const/4 v10, 0x0

    goto :goto_6

    .line 283
    .end local v0    # "j":I
    :cond_a
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljavax/mail/Transport;->connect()V
    :try_end_1
    .catch Ljavax/mail/SendFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 284
    move-object/from16 v10, v16

    .end local v16    # "transport":Ljavax/mail/Transport;
    .local v10, "transport":Ljavax/mail/Transport;
    :try_start_2
    invoke-virtual {v10, v1, v15}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_2
    .catch Ljavax/mail/SendFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 285
    nop

    .line 318
    invoke-virtual {v10}, Ljavax/mail/Transport;->close()V

    .line 269
    .end local v10    # "transport":Ljavax/mail/Transport;
    .end local v14    # "v":Ljava/util/Vector;
    .end local v15    # "protaddresses":[Ljavax/mail/Address;
    :goto_7
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 317
    .restart local v10    # "transport":Ljavax/mail/Transport;
    .restart local v14    # "v":Ljava/util/Vector;
    .restart local v15    # "protaddresses":[Ljavax/mail/Address;
    :catchall_1
    move-exception v0

    move/from16 v16, v8

    goto/16 :goto_12

    .line 310
    :catch_0
    move-exception v0

    goto :goto_8

    .line 285
    :catch_1
    move-exception v0

    goto :goto_a

    .line 317
    .end local v10    # "transport":Ljavax/mail/Transport;
    .restart local v16    # "transport":Ljavax/mail/Transport;
    :catchall_2
    move-exception v0

    move-object/from16 v10, v16

    move/from16 v16, v8

    .end local v16    # "transport":Ljavax/mail/Transport;
    .restart local v10    # "transport":Ljavax/mail/Transport;
    goto/16 :goto_12

    .line 310
    .end local v10    # "transport":Ljavax/mail/Transport;
    .restart local v16    # "transport":Ljavax/mail/Transport;
    :catch_2
    move-exception v0

    move-object/from16 v10, v16

    .line 311
    .end local v16    # "transport":Ljavax/mail/Transport;
    .local v0, "mex":Ljavax/mail/MessagingException;
    .restart local v10    # "transport":Ljavax/mail/Transport;
    :goto_8
    const/16 v20, 0x1

    .line 313
    if-nez v12, :cond_b

    .line 314
    move-object v12, v0

    goto :goto_9

    .line 316
    :cond_b
    :try_start_3
    invoke-virtual {v12, v0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 318
    .end local v0    # "mex":Ljavax/mail/MessagingException;
    :goto_9
    invoke-virtual {v10}, Ljavax/mail/Transport;->close()V

    const/4 v10, 0x0

    goto/16 :goto_3

    .line 285
    .end local v10    # "transport":Ljavax/mail/Transport;
    .restart local v16    # "transport":Ljavax/mail/Transport;
    :catch_3
    move-exception v0

    move-object/from16 v10, v16

    .line 286
    .end local v16    # "transport":Ljavax/mail/Transport;
    .local v0, "sex":Ljavax/mail/SendFailedException;
    .restart local v10    # "transport":Ljavax/mail/Transport;
    :goto_a
    const/16 v20, 0x1

    .line 288
    if-nez v12, :cond_c

    .line 289
    move-object v12, v0

    goto :goto_b

    .line 291
    :cond_c
    :try_start_4
    invoke-virtual {v12, v0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    .line 294
    :goto_b
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getInvalidAddresses()[Ljavax/mail/Address;

    move-result-object v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v18, v16

    .line 295
    .local v18, "a":[Ljavax/mail/Address;
    move-object/from16 v1, v18

    .end local v18    # "a":[Ljavax/mail/Address;
    .local v1, "a":[Ljavax/mail/Address;
    if-eqz v1, :cond_e

    .line 296
    const/16 v16, 0x0

    move/from16 v3, v16

    .local v3, "j":I
    :goto_c
    move/from16 v16, v8

    .end local v8    # "dsize":I
    .local v16, "dsize":I
    :try_start_5
    array-length v8, v1

    if-lt v3, v8, :cond_d

    goto :goto_d

    .line 297
    :cond_d
    aget-object v8, v1, v3

    invoke-virtual {v5, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 296
    add-int/lit8 v3, v3, 0x1

    move/from16 v8, v16

    goto :goto_c

    .line 295
    .end local v3    # "j":I
    .end local v16    # "dsize":I
    .restart local v8    # "dsize":I
    :cond_e
    move/from16 v16, v8

    .line 300
    .end local v8    # "dsize":I
    .restart local v16    # "dsize":I
    :goto_d
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getValidSentAddresses()[Ljavax/mail/Address;

    move-result-object v3

    move-object v1, v3

    .line 301
    if-eqz v1, :cond_10

    .line 302
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_e
    array-length v8, v1

    if-lt v3, v8, :cond_f

    goto :goto_f

    .line 303
    :cond_f
    aget-object v8, v1, v3

    invoke-virtual {v6, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 302
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 306
    .end local v3    # "k":I
    :cond_10
    :goto_f
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getValidUnsentAddresses()[Ljavax/mail/Address;

    move-result-object v3

    .line 307
    .local v3, "c":[Ljavax/mail/Address;
    if-eqz v3, :cond_12

    .line 308
    const/4 v8, 0x0

    .local v8, "l":I
    :goto_10
    move-object/from16 v18, v0

    .end local v0    # "sex":Ljavax/mail/SendFailedException;
    .local v18, "sex":Ljavax/mail/SendFailedException;
    array-length v0, v3

    if-lt v8, v0, :cond_11

    goto :goto_11

    .line 309
    :cond_11
    aget-object v0, v3, v8

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 308
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v18

    goto :goto_10

    .line 307
    .end local v8    # "l":I
    .end local v18    # "sex":Ljavax/mail/SendFailedException;
    .restart local v0    # "sex":Ljavax/mail/SendFailedException;
    :cond_12
    move-object/from16 v18, v0

    .line 318
    .end local v0    # "sex":Ljavax/mail/SendFailedException;
    .end local v1    # "a":[Ljavax/mail/Address;
    .end local v3    # "c":[Ljavax/mail/Address;
    :goto_11
    invoke-virtual {v10}, Ljavax/mail/Transport;->close()V

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v8, v16

    const/4 v10, 0x0

    goto/16 :goto_3

    .line 317
    :catchall_3
    move-exception v0

    goto :goto_12

    .end local v16    # "dsize":I
    .local v8, "dsize":I
    :catchall_4
    move-exception v0

    move/from16 v16, v8

    .line 318
    .end local v8    # "dsize":I
    .restart local v16    # "dsize":I
    :goto_12
    invoke-virtual {v10}, Ljavax/mail/Transport;->close()V

    .line 319
    throw v0

    .line 238
    .end local v9    # "s":Ljavax/mail/Session;
    .end local v10    # "transport":Ljavax/mail/Transport;
    .end local v12    # "chainedEx":Ljavax/mail/MessagingException;
    .end local v13    # "e":Ljava/util/Enumeration;
    .end local v14    # "v":Ljava/util/Vector;
    .end local v15    # "protaddresses":[Ljavax/mail/Address;
    .end local v16    # "dsize":I
    .end local v20    # "sendFailed":Z
    .restart local v8    # "dsize":I
    :cond_13
    new-instance v1, Ljavax/mail/SendFailedException;

    invoke-direct {v1, v0}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    .local v8, "i":I
    :cond_14
    move-object/from16 v11, p3

    aget-object v1, v2, v8

    invoke-virtual {v1}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 226
    aget-object v1, v2, v8

    invoke-virtual {v1}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 227
    .local v1, "v":Ljava/util/Vector;
    aget-object v3, v2, v8

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 228
    .end local v1    # "v":Ljava/util/Vector;
    goto :goto_13

    .line 230
    :cond_15
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 231
    .local v1, "w":Ljava/util/Vector;
    aget-object v3, v2, v8

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 232
    aget-object v3, v2, v8

    invoke-virtual {v3}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .end local v1    # "w":Ljava/util/Vector;
    :goto_13
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    goto/16 :goto_0

    .line 209
    .end local v4    # "protocols":Ljava/util/Hashtable;
    .end local v5    # "invalid":Ljava/util/Vector;
    .end local v6    # "validSent":Ljava/util/Vector;
    .end local v7    # "validUnsent":Ljava/util/Vector;
    .end local v8    # "i":I
    :cond_16
    move-object/from16 v11, p3

    .line 210
    new-instance v1, Ljavax/mail/SendFailedException;

    invoke-direct {v1, v0}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized addTransportListener(Ljavax/mail/event/TransportListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/TransportListener;

    monitor-enter p0

    .line 380
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    .line 382
    .end local p0    # "this":Ljavax/mail/Transport;
    :cond_0
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    .line 379
    .end local p1    # "l":Ljavax/mail/event/TransportListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "validSent"    # [Ljavax/mail/Address;
    .param p3, "validUnsent"    # [Ljavax/mail/Address;
    .param p4, "invalid"    # [Ljavax/mail/Address;
    .param p5, "msg"    # Ljavax/mail/Message;

    .line 418
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 419
    return-void

    .line 421
    :cond_0
    new-instance v0, Ljavax/mail/event/TransportEvent;

    .line 422
    nop

    .line 421
    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Ljavax/mail/event/TransportEvent;-><init>(Ljavax/mail/Transport;I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 423
    .local v0, "e":Ljavax/mail/event/TransportEvent;
    iget-object v1, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Transport;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 424
    return-void
.end method

.method public declared-synchronized removeTransportListener(Ljavax/mail/event/TransportListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/TransportListener;

    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Ljavax/mail/Transport;->transportListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .end local p0    # "this":Ljavax/mail/Transport;
    :cond_0
    monitor-exit p0

    return-void

    .line 394
    .end local p1    # "l":Ljavax/mail/event/TransportListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method
