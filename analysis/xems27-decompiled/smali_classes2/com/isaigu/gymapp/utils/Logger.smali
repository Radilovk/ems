.class public Lcom/isaigu/gymapp/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static currentDate:Ljava/lang/String;

.field private static debug:Z

.field private static fileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAndGetLogFile(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    invoke-static {}, Lcom/isaigu/gymapp/utils/TimeUtils;->getCurrentDateyyyy_MM_dd()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/utils/Logger;->currentDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/isaigu/gymapp/utils/Logger;->fileOutputStream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_3

    .line 55
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/utils/TimeUtils;->getCurrentDateyyyy_MM_dd()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/utils/Logger;->currentDate:Ljava/lang/String;

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 58
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "logs"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 62
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/utils/TimeUtils;->getCurrentDateyyyy_MM_dd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 66
    :cond_2
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v1, Lcom/isaigu/gymapp/utils/Logger;->fileOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 108
    const-string v0, "Debug"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/utils/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 92
    const-string v0, "Error"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/utils/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/utils/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static error(Ljava/lang/String;[B)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/isaigu/gymapp/utils/ProjectUtils;->getPrintString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/utils/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static error([B)V
    .locals 1
    .param p0, "data"    # [B

    .line 104
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/ProjectUtils;->getPrintString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/Logger;->error(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private static generateLogContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/isaigu/gymapp/utils/TimeUtils;->getCurrentDateyyyy_MM_dd_HH_mm_ss()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 88
    const-string v0, "Info"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/utils/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static initContext(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dd"    # Z

    .line 21
    sput-object p0, Lcom/isaigu/gymapp/utils/Logger;->context:Landroid/content/Context;

    .line 22
    sput-boolean p1, Lcom/isaigu/gymapp/utils/Logger;->debug:Z

    .line 23
    invoke-static {p0}, Lcom/isaigu/gymapp/utils/Logger;->checkAndGetLogFile(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Lcom/isaigu/gymapp/utils/Logger;->shrinkFileLogData()V

    .line 25
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 113
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/utils/Logger;->generateLogContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "writeContent":Ljava/lang/String;
    sget-object v1, Lcom/isaigu/gymapp/utils/Logger;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/isaigu/gymapp/utils/Logger;->checkAndGetLogFile(Landroid/content/Context;)V

    .line 115
    sget-object v1, Lcom/isaigu/gymapp/utils/Logger;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 116
    sget-object v1, Lcom/isaigu/gymapp/utils/Logger;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0    # "writeContent":Ljava/lang/String;
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static logConsole(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 129
    sget-boolean v0, Lcom/isaigu/gymapp/utils/Logger;->debug:Z

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method

.method public static logConsole(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 136
    sget-boolean v0, Lcom/isaigu/gymapp/utils/Logger;->debug:Z

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method

.method public static logConsolet(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 123
    sget-boolean v0, Lcom/isaigu/gymapp/utils/Logger;->debug:Z

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method

.method private static shrinkFileLogData()V
    .locals 17

    .line 28
    sget-object v0, Lcom/isaigu/gymapp/utils/Logger;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 29
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "logs"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 31
    .local v1, "files":[Ljava/io/File;
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 32
    aget-object v4, v1, v2

    if-eqz v4, :cond_0

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, "fileName":Ljava/lang/String;
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 35
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "dates":[Ljava/lang/String;
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 37
    .local v6, "year":I
    aget-object v7, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 38
    .local v14, "month":I
    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 39
    .local v15, "day":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 40
    .local v13, "calendar":Ljava/util/Calendar;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object v7, v13

    move v8, v6

    move v9, v14

    move v10, v15

    move-object v3, v13

    .end local v13    # "calendar":Ljava/util/Calendar;
    .local v3, "calendar":Ljava/util/Calendar;
    move/from16 v13, v16

    invoke-virtual/range {v7 .. v13}, Ljava/util/Calendar;->set(IIIIII)V

    .line 41
    const/4 v7, 0x6

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 42
    .local v8, "totalDay":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 43
    .local v9, "cal":Ljava/util/Calendar;
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 44
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 45
    .local v7, "totalToday":I
    sub-int v10, v7, v8

    const/4 v11, 0x1

    if-lt v10, v11, :cond_1

    .line 46
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delete file : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v1, v2

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 47
    aget-object v10, v1, v2

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 32
    .end local v3    # "calendar":Ljava/util/Calendar;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "dates":[Ljava/lang/String;
    .end local v6    # "year":I
    .end local v7    # "totalToday":I
    .end local v8    # "totalDay":I
    .end local v9    # "cal":Ljava/util/Calendar;
    .end local v14    # "month":I
    .end local v15    # "day":I
    :cond_0
    const/4 v11, 0x1

    .line 31
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 51
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public static unInit()V
    .locals 2

    .line 143
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/isaigu/gymapp/utils/Logger;->context:Landroid/content/Context;

    .line 144
    sget-object v1, Lcom/isaigu/gymapp/utils/Logger;->fileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 145
    sget-object v1, Lcom/isaigu/gymapp/utils/Logger;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 147
    :cond_0
    sput-object v0, Lcom/isaigu/gymapp/utils/Logger;->fileOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
