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

    .prologue
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
    .locals 12
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;
        }
    .end annotation

    .prologue
    .line 295
    array-length v9, p0

    .line 296
    .local v9, "nArgs":I
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
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_9

    .line 303
    aget-object v7, p0, v8

    .line 304
    .local v7, "arg":Ljava/lang/String;
    const-string v0, "--"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 305
    const-string v0, "--biffhex"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    const/4 v1, 0x1

    .line 302
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 307
    :cond_1
    const-string v0, "--noint"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    const/4 v2, 0x1

    goto :goto_1

    .line 309
    :cond_2
    const-string v0, "--out"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    const/4 v3, 0x1

    goto :goto_1

    .line 311
    :cond_3
    const-string v0, "--escher"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 312
    const-string v0, "poi.deserialize.escher"

    const-string/jumbo v10, "true"

    invoke-static {v0, v10}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 313
    :cond_4
    const-string v0, "--rawhex"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 314
    const/4 v4, 0x1

    goto :goto_1

    .line 315
    :cond_5
    const-string v0, "--noheader"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 316
    const/4 v5, 0x1

    goto :goto_1

    .line 318
    :cond_6
    new-instance v0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected option \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_7
    new-instance v6, Ljava/io/File;

    .end local v6    # "file":Ljava/io/File;
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    .restart local v6    # "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 324
    new-instance v0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Specified file \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' does not exist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_8
    add-int/lit8 v0, v8, 0x1

    if-ge v0, v9, :cond_0

    .line 327
    new-instance v0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;

    const-string v10, "File name must be the last arg"

    invoke-direct {v0, v10}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    .end local v7    # "arg":Ljava/lang/String;
    :cond_9
    if-nez v6, :cond_a

    .line 331
    new-instance v0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;

    const-string v10, "Biff viewer needs a filename"

    invoke-direct {v0, v10}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_a
    new-instance v0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;-><init>(ZZZZZLjava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_file:Ljava/io/File;

    return-object v0
.end method

.method public shouldDumpBiffHex()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_biffhex:Z

    return v0
.end method

.method public shouldDumpRecordInterpretations()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_noint:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldOutputRawHexOnly()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_rawhex:Z

    return v0
.end method

.method public shouldOutputToFile()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_out:Z

    return v0
.end method

.method public suppressHeader()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$CommandArgs;->_noHeader:Z

    return v0
.end method
