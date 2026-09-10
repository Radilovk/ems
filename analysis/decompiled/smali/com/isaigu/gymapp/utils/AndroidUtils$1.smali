.class final Lcom/isaigu/gymapp/utils/AndroidUtils$1;
.super Ljava/lang/Thread;
.source "AndroidUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/utils/AndroidUtils;->installSlient(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$abspath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/isaigu/gymapp/utils/AndroidUtils$1;->val$abspath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 194
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pm install -r "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/isaigu/gymapp/utils/AndroidUtils$1;->val$abspath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "cmd":Ljava/lang/String;
    const/4 v7, 0x0

    .line 196
    .local v7, "process":Ljava/lang/Process;
    const/4 v5, 0x0

    .line 197
    .local v5, "os":Ljava/io/DataOutputStream;
    const/4 v10, 0x0

    .line 198
    .local v10, "successResult":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 199
    .local v3, "errorResult":Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v9, "successMsg":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v2, "errorMsg":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    const-string v13, "/system/xbin/su"

    invoke-virtual {v12, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 204
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 205
    .end local v5    # "os":Ljava/io/DataOutputStream;
    .local v6, "os":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/DataOutputStream;->write([B)V

    .line 206
    const-string v12, "\n"

    invoke-virtual {v6, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 207
    const-string v12, "exit\n"

    invoke-virtual {v6, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 210
    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    .line 212
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 213
    .end local v10    # "successResult":Ljava/io/BufferedReader;
    .local v11, "successResult":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 215
    .end local v3    # "errorResult":Ljava/io/BufferedReader;
    .local v4, "errorResult":Ljava/io/BufferedReader;
    :goto_0
    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "s":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 216
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 221
    .end local v8    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v3, v4

    .end local v4    # "errorResult":Ljava/io/BufferedReader;
    .restart local v3    # "errorResult":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "successResult":Ljava/io/BufferedReader;
    .restart local v10    # "successResult":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 222
    .end local v6    # "os":Ljava/io/DataOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 225
    if-eqz v5, :cond_0

    .line 226
    :try_start_5
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 228
    :cond_0
    if-eqz v7, :cond_1

    .line 229
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    .line 231
    :cond_1
    if-eqz v10, :cond_2

    .line 232
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 234
    :cond_2
    if-eqz v3, :cond_3

    .line 235
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\u6210\u529f\u6d88\u606f\uff1a"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\u9519\u8bef\u6d88\u606f: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    return-void

    .line 218
    .end local v3    # "errorResult":Ljava/io/BufferedReader;
    .end local v5    # "os":Ljava/io/DataOutputStream;
    .end local v10    # "successResult":Ljava/io/BufferedReader;
    .restart local v4    # "errorResult":Ljava/io/BufferedReader;
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v11    # "successResult":Ljava/io/BufferedReader;
    :cond_4
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 219
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 224
    .end local v8    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v12

    move-object v3, v4

    .end local v4    # "errorResult":Ljava/io/BufferedReader;
    .restart local v3    # "errorResult":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "successResult":Ljava/io/BufferedReader;
    .restart local v10    # "successResult":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 225
    .end local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    :goto_4
    if-eqz v5, :cond_5

    .line 226
    :try_start_7
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 228
    :cond_5
    if-eqz v7, :cond_6

    .line 229
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    .line 231
    :cond_6
    if-eqz v10, :cond_7

    .line 232
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 234
    :cond_7
    if-eqz v3, :cond_8

    .line 235
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 239
    :cond_8
    :goto_5
    throw v12

    .line 225
    .end local v3    # "errorResult":Ljava/io/BufferedReader;
    .end local v5    # "os":Ljava/io/DataOutputStream;
    .end local v10    # "successResult":Ljava/io/BufferedReader;
    .restart local v4    # "errorResult":Ljava/io/BufferedReader;
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v11    # "successResult":Ljava/io/BufferedReader;
    :cond_9
    if-eqz v6, :cond_a

    .line 226
    :try_start_8
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 228
    :cond_a
    if-eqz v7, :cond_b

    .line 229
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    .line 231
    :cond_b
    if-eqz v11, :cond_c

    .line 232
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 234
    :cond_c
    if-eqz v4, :cond_d

    .line 235
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_d
    move-object v3, v4

    .end local v4    # "errorResult":Ljava/io/BufferedReader;
    .restart local v3    # "errorResult":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "successResult":Ljava/io/BufferedReader;
    .restart local v10    # "successResult":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 239
    .end local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 237
    .end local v3    # "errorResult":Ljava/io/BufferedReader;
    .end local v5    # "os":Ljava/io/DataOutputStream;
    .end local v10    # "successResult":Ljava/io/BufferedReader;
    .restart local v4    # "errorResult":Ljava/io/BufferedReader;
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v11    # "successResult":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 238
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "errorResult":Ljava/io/BufferedReader;
    .restart local v3    # "errorResult":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "successResult":Ljava/io/BufferedReader;
    .restart local v10    # "successResult":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 240
    .end local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 237
    .end local v8    # "s":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 238
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 237
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 238
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 224
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v12

    goto :goto_4

    .end local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v12

    move-object v5, v6

    .end local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    goto :goto_4

    .end local v5    # "os":Ljava/io/DataOutputStream;
    .end local v10    # "successResult":Ljava/io/BufferedReader;
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v11    # "successResult":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v12

    move-object v10, v11

    .end local v11    # "successResult":Ljava/io/BufferedReader;
    .restart local v10    # "successResult":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    goto :goto_4

    .line 221
    :catch_4
    move-exception v1

    goto/16 :goto_1

    .end local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v1

    move-object v5, v6

    .end local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    goto/16 :goto_1

    .end local v5    # "os":Ljava/io/DataOutputStream;
    .end local v10    # "successResult":Ljava/io/BufferedReader;
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v11    # "successResult":Ljava/io/BufferedReader;
    :catch_6
    move-exception v1

    move-object v10, v11

    .end local v11    # "successResult":Ljava/io/BufferedReader;
    .restart local v10    # "successResult":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    goto/16 :goto_1
.end method
