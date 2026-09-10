.class final Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;
.super Ljava/lang/Object;
.source "BiffViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/dev/BiffViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CommandArgs"
.end annotation


# instance fields
.field private final _biffhex:Z

.field private final _file:Ljava/io/File;

.field private final _noHeader:Z

.field private final _noint:Z

.field private final _out:Z

.field private final _rawhex:Z


# direct methods
.method private constructor <init>(ZZZZZLjava/io/File;)V
    .locals 0
    .param p1, "biffhex"    # Z
    .param p2, "noint"    # Z
    .param p3, "out"    # Z
    .param p4, "rawhex"    # Z
    .param p5, "noHeader"    # Z
    .param p6, "file"    # Ljava/io/File;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-boolean p1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_biffhex:Z

    .line 287
    iput-boolean p2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_noint:Z

    .line 288
    iput-boolean p3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_out:Z

    .line 289
    iput-boolean p4, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_rawhex:Z

    .line 290
    iput-object p6, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_file:Ljava/io/File;

    .line 291
    iput-boolean p5, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_noHeader:Z

    .line 292
    return-void
.end method

.method public static parse([Ljava/lang/String;)Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;
    .locals 15
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;
        }
    .end annotation

    .line 295
    array-length v0, p0

    .line 296
    .local v0, "nArgs":I
    const/4 v1, 0x0

    .line 297
    .local v1, "biffhex":Z
    const/4 v2, 0x0

    .line 298
    .local v2, "noint":Z
    const/4 v3, 0x0

    .line 299
    .local v3, "out":Z
    const/4 v4, 0x0

    .line 300
    .local v4, "rawhex":Z
    const/4 v5, 0x0

    .line 301
    .local v5, "noheader":Z
    const/4 v6, 0x0

    .line 302
    .local v6, "file":Ljava/io/File;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v0, :cond_9

    .line 303
    aget-object v8, p0, v7

    .line 304
    .local v8, "arg":Ljava/lang/String;
    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 305
    const-string v9, "--biffhex"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 306
    const/4 v1, 0x1

    goto :goto_1

    .line 307
    :cond_0
    const-string v9, "--noint"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 308
    const/4 v2, 0x1

    goto :goto_1

    .line 309
    :cond_1
    const-string v9, "--out"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 310
    const/4 v3, 0x1

    goto :goto_1

    .line 311
    :cond_2
    const-string v9, "--escher"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 312
    const-string v9, "poi.deserialize.escher"

    const-string v10, "true"

    invoke-static {v9, v10}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 313
    :cond_3
    const-string v9, "--rawhex"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 314
    const/4 v4, 0x1

    goto :goto_1

    .line 315
    :cond_4
    const-string v9, "--noheader"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 316
    const/4 v5, 0x1

    goto :goto_1

    .line 318
    :cond_5
    new-instance v9, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected option \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 322
    :cond_6
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v9

    .line 323
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 326
    add-int/lit8 v9, v7, 0x1

    if-lt v9, v0, :cond_7

    .line 302
    .end local v8    # "arg":Ljava/lang/String;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 327
    .restart local v8    # "arg":Ljava/lang/String;
    :cond_7
    new-instance v9, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;

    const-string v10, "File name must be the last arg"

    invoke-direct {v9, v10}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 324
    :cond_8
    new-instance v9, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Specified file \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\' does not exist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 330
    .end local v7    # "i":I
    .end local v8    # "arg":Ljava/lang/String;
    :cond_9
    if-eqz v6, :cond_a

    .line 333
    new-instance v7, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;

    move-object v8, v7

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move-object v14, v6

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;-><init>(ZZZZZLjava/io/File;)V

    return-object v7

    .line 331
    :cond_a
    new-instance v7, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;

    const-string v8, "Biff viewer needs a filename"

    invoke-direct {v7, v8}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_file:Ljava/io/File;

    return-object v0
.end method

.method public shouldDumpBiffHex()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_biffhex:Z

    return v0
.end method

.method public shouldDumpRecordInterpretations()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_noint:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldOutputRawHexOnly()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_rawhex:Z

    return v0
.end method

.method public shouldOutputToFile()Z
    .locals 1

    .line 342
    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_out:Z

    return v0
.end method

.method public suppressHeader()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_noHeader:Z

    return v0
.end method
