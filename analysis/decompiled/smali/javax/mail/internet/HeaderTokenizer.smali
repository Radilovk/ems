.class public Ljavax/mail/internet/HeaderTokenizer;
.super Ljava/lang/Object;
.source "HeaderTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/HeaderTokenizer$Token;
    }
.end annotation


# static fields
.field private static final EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

.field public static final MIME:Ljava/lang/String; = "()<>@,;:\\\"\t []/?="

.field public static final RFC822:Ljava/lang/String; = "()<>@,;:\\\"\t .[]"


# instance fields
.field private currentPos:I

.field private delimiters:Ljava/lang/String;

.field private maxPos:I

.field private nextPos:I

.field private peekPos:I

.field private skipComments:Z

.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string v0, "()<>@,;:\\\"\t .[]"

    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "delimiters"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "delimiters"    # Ljava/lang/String;
    .param p3, "skipComments"    # Z

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "header":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    .line 171
    iput-boolean p3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    .line 172
    iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 174
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    .line 175
    return-void
.end method

.method private collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 8
    .param p1, "eos"    # C
    .param p2, "keepEscapes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x22

    const/4 v6, -0x2

    .line 385
    const/4 v1, 0x0

    .line 386
    .local v1, "filter":Z
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .local v3, "start":I
    :goto_0
    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v4, v5, :cond_0

    .line 414
    if-ne p1, v7, :cond_6

    .line 415
    new-instance v4, Ljavax/mail/internet/ParseException;

    const-string v5, "Unbalanced quoted string"

    invoke-direct {v4, v5}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 387
    :cond_0
    iget-object v4, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 388
    .local v0, "c":C
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_2

    .line 389
    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 390
    const/4 v1, 0x1

    .line 386
    :cond_1
    :goto_1
    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_0

    .line 391
    :cond_2
    const/16 v4, 0xd

    if-ne v0, v4, :cond_3

    .line 392
    const/4 v1, 0x1

    goto :goto_1

    .line 393
    :cond_3
    if-ne v0, p1, :cond_1

    .line 394
    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 397
    if-eqz v1, :cond_5

    .line 398
    iget-object v4, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v3, v5, p2}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "s":Ljava/lang/String;
    :goto_2
    if-eq v0, v7, :cond_4

    .line 403
    invoke-static {v2}, Ljavax/mail/internet/HeaderTokenizer;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 407
    :cond_4
    new-instance v4, Ljavax/mail/internet/HeaderTokenizer$Token;

    invoke-direct {v4, v6, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    .line 424
    .end local v0    # "c":C
    :goto_3
    return-object v4

    .line 400
    .end local v2    # "s":Ljava/lang/String;
    .restart local v0    # "c":C
    :cond_5
    iget-object v4, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_2

    .line 419
    .end local v0    # "c":C
    .end local v2    # "s":Ljava/lang/String;
    :cond_6
    if-eqz v1, :cond_7

    .line 420
    iget-object v4, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-static {v4, v3, v5, p2}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v2

    .line 423
    .restart local v2    # "s":Ljava/lang/String;
    :goto_4
    invoke-static {v2}, Ljavax/mail/internet/HeaderTokenizer;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    new-instance v4, Ljavax/mail/internet/HeaderTokenizer$Token;

    invoke-direct {v4, v6, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto :goto_3

    .line 422
    .end local v2    # "s":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_4
.end method

.method private static filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "keepEscapes"    # Z

    .prologue
    const/16 v6, 0x5c

    .line 457
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 459
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 460
    .local v2, "gotEscape":Z
    const/4 v1, 0x0

    .line 462
    .local v1, "gotCR":Z
    move v3, p1

    .local v3, "i":I
    :goto_0
    if-lt v3, p2, :cond_0

    .line 493
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 463
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 464
    .local v0, "c":C
    const/16 v5, 0xa

    if-ne v0, v5, :cond_1

    if-eqz v1, :cond_1

    .line 467
    const/4 v1, 0x0

    .line 462
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 471
    :cond_1
    const/4 v1, 0x0

    .line 472
    if-nez v2, :cond_4

    .line 474
    if-ne v0, v6, :cond_2

    .line 475
    const/4 v2, 0x1

    goto :goto_1

    .line 476
    :cond_2
    const/16 v5, 0xd

    if-ne v0, v5, :cond_3

    .line 477
    const/4 v1, 0x1

    goto :goto_1

    .line 479
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 487
    :cond_4
    if-eqz p3, :cond_5

    .line 488
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 489
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 490
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getNext(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 13
    .param p1, "endOfAtom"    # C
    .param p2, "keepEscapes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x7f

    const/4 v11, -0x4

    const/16 v10, 0x28

    const/16 v9, 0x22

    const/16 v8, 0x20

    .line 290
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v6, v7, :cond_0

    .line 291
    sget-object v6, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    .line 379
    :goto_0
    return-object v6

    .line 294
    :cond_0
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v6

    if-ne v6, v11, :cond_1

    .line 295
    sget-object v6, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    goto :goto_0

    .line 299
    :cond_1
    const/4 v2, 0x0

    .line 301
    .local v2, "filter":Z
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 305
    .local v0, "c":C
    :goto_1
    if-eq v0, v10, :cond_2

    .line 345
    if-ne v0, v9, :cond_d

    .line 346
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 347
    invoke-direct {p0, v9, p2}, Ljavax/mail/internet/HeaderTokenizer;->collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v6

    goto :goto_0

    .line 308
    :cond_2
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .local v5, "start":I
    const/4 v3, 0x1

    .line 309
    .local v3, "nesting":I
    :goto_2
    if-lez v3, :cond_3

    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    .line 308
    if-lt v6, v7, :cond_4

    .line 322
    :cond_3
    if-eqz v3, :cond_9

    .line 323
    new-instance v6, Ljavax/mail/internet/ParseException;

    const-string v7, "Unbalanced comments"

    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 311
    :cond_4
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 312
    const/16 v6, 0x5c

    if-ne v0, v6, :cond_6

    .line 313
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 314
    const/4 v2, 0x1

    .line 310
    :cond_5
    :goto_3
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_2

    .line 315
    :cond_6
    const/16 v6, 0xd

    if-ne v0, v6, :cond_7

    .line 316
    const/4 v2, 0x1

    goto :goto_3

    .line 317
    :cond_7
    if-ne v0, v10, :cond_8

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 319
    :cond_8
    const/16 v6, 0x29

    if-ne v0, v6, :cond_5

    .line 320
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 325
    :cond_9
    iget-boolean v6, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    if-nez v6, :cond_b

    .line 329
    if-eqz v2, :cond_a

    .line 330
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v5, v7, p2}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "s":Ljava/lang/String;
    :goto_4
    new-instance v6, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v7, -0x3

    invoke-direct {v6, v7, v4}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 332
    .end local v4    # "s":Ljava/lang/String;
    :cond_a
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_4

    .line 338
    .end local v4    # "s":Ljava/lang/String;
    :cond_b
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v6

    if-ne v6, v11, :cond_c

    .line 339
    sget-object v6, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    goto/16 :goto_0

    .line 340
    :cond_c
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_1

    .line 351
    .end local v3    # "nesting":I
    .end local v5    # "start":I
    :cond_d
    if-lt v0, v8, :cond_e

    if-ge v0, v12, :cond_e

    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_10

    .line 352
    :cond_e
    if-lez p1, :cond_f

    if-eq v0, p1, :cond_f

    .line 355
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/HeaderTokenizer;->collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v6

    goto/16 :goto_0

    .line 357
    :cond_f
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 358
    const/4 v6, 0x1

    new-array v1, v6, [C

    .line 359
    .local v1, "ch":[C
    const/4 v6, 0x0

    aput-char v0, v1, v6

    .line 360
    new-instance v6, Ljavax/mail/internet/HeaderTokenizer$Token;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v6, v0, v7}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 364
    .end local v1    # "ch":[C
    :cond_10
    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .restart local v5    # "start":I
    :goto_5
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v6, v7, :cond_12

    .line 379
    :cond_11
    new-instance v6, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v7, -0x1

    iget-object v8, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 365
    :cond_12
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 368
    if-lt v0, v8, :cond_13

    if-ge v0, v12, :cond_13

    if-eq v0, v10, :cond_13

    if-eq v0, v8, :cond_13

    .line 369
    if-eq v0, v9, :cond_13

    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_14

    .line 370
    :cond_13
    if-lez p1, :cond_11

    if-eq v0, p1, :cond_11

    .line 373
    iput v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 374
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/HeaderTokenizer;->collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v6

    goto/16 :goto_0

    .line 364
    :cond_14
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_5
.end method

.method private skipWhiteSpace()I
    .locals 3

    .prologue
    .line 430
    :goto_0
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v1, v2, :cond_0

    .line 434
    const/4 v1, -0x4

    :goto_1
    return v1

    .line 431
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 432
    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 433
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_1

    .line 430
    :cond_1
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_0
.end method

.method private static trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 441
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_1

    .line 446
    :cond_0
    if-gtz v1, :cond_3

    .line 447
    const-string v2, ""

    .line 449
    :goto_1
    return-object v2

    .line 442
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    .line 443
    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 441
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 449
    .end local v0    # "c":C
    :cond_3
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public getRemainder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public next()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, v0, v0}, Ljavax/mail/internet/HeaderTokenizer;->next(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    return-object v0
.end method

.method public next(C)Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 1
    .param p1, "endOfAtom"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/HeaderTokenizer;->next(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    return-object v0
.end method

.method public next(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 2
    .param p1, "endOfAtom"    # C
    .param p2, "keepEscapes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    .line 246
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 247
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/HeaderTokenizer;->getNext(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 248
    .local v0, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    .line 249
    return-object v0
.end method

.method public peek()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 264
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 265
    invoke-direct {p0, v2, v2}, Ljavax/mail/internet/HeaderTokenizer;->getNext(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 266
    .local v0, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    .line 267
    return-object v0
.end method
