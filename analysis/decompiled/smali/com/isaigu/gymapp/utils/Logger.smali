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

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAndGetLogFile(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {}, Lcom/isaigu/gymapp/utils/TimeUtils;->getCurrentDateyyyy_MM_dd()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/utils/Logger;->currentDate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/isaigu/gymapp/utils/Logger;->fileOutputStream:Ljava/io/FileOutputStream;

    if-nez v3, :cond_3

    .line 55
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/utils/TimeUtils;->getCurrentDateyyyy_MM_dd()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/utils/Logger;->currentDate:Ljava/lang/String;

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 58
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "logs"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 62
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/utils/TimeUtils;->getCurrentDateyyyy_MM_dd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 64
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 66
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object v3, Lcom/isaigu/gymapp/utils/Logger;->fileOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v0, "Debug"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/utils/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
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

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    .prologue
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

    .prologue
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

    .prologue
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

    .prologue
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
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/utils/Logger;->generateLogContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "writeContent":Ljava/lang/String;
    sget-object v2, Lcom/isaigu/gymapp/utils/Logger;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/isaigu/gymapp/utils/Logger;->checkAndGetLogFile(Landroid/content/Context;)V

    .line 115
    sget-object v2, Lcom/isaigu/gymapp/utils/Logger;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 116
    sget-object v2, Lcom/isaigu/gymapp/utils/Logger;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v1    # "writeContent":Ljava/lang/String;
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static logConsole(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
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

    .prologue
    .line 136
    sget-boolean v0, Lcom/isaigu/gymapp/utils/Logger;->debug:Z

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    .prologue
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
    .locals 16

    .prologue
    .line 28
    sget-object v4, Lcom/isaigu/gymapp/utils/Logger;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    .line 29
    .local v9, "file":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    const-string v4, "logs"

    invoke-direct {v10, v9, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .end local v9    # "file":Ljava/io/File;
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 31
    .local v12, "files":[Ljava/io/File;
    array-length v4, v12

    add-int/lit8 v13, v4, -0x1

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_1

    .line 32
    aget-object v4, v12, v13

    if-eqz v4, :cond_0

    aget-object v4, v12, v13

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    aget-object v4, v12, v13

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 34
    .local v11, "fileName":Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v5, 0x2e

    invoke-virtual {v11, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v11, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 35
    const-string v4, "-"

    invoke-virtual {v11, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 36
    .local v8, "dates":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v8, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 37
    .local v1, "year":I
    const/4 v4, 0x1

    aget-object v4, v8, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 38
    .local v2, "month":I
    const/4 v4, 0x2

    aget-object v4, v8, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 39
    .local v3, "day":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 40
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 41
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 42
    .local v14, "totalDay":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 43
    .local v7, "cal":Ljava/util/Calendar;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 44
    const/4 v4, 0x6

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 45
    .local v15, "totalToday":I
    sub-int v4, v15, v14

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v12, v13

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/utils/Logger;->logConsole(Ljava/lang/String;)V

    .line 47
    aget-object v4, v12, v13

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 31
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "year":I
    .end local v2    # "month":I
    .end local v3    # "day":I
    .end local v7    # "cal":Ljava/util/Calendar;
    .end local v8    # "dates":[Ljava/lang/String;
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v14    # "totalDay":I
    .end local v15    # "totalToday":I
    :cond_0
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method public static unInit()V
    .locals 2

    .prologue
    .line 143
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/isaigu/gymapp/utils/Logger;->context:Landroid/content/Context;

    .line 144
    sget-object v1, Lcom/isaigu/gymapp/utils/Logger;->fileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 145
    sget-object v1, Lcom/isaigu/gymapp/utils/Logger;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 147
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/utils/Logger;->fileOutputStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 149
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
