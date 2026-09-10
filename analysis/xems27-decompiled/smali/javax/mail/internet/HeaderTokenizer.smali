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

    .line 184
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "delimiters"    # Ljava/lang/String;
    .param p3, "skipComments"    # Z

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    .line 171
    iput-boolean p3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    .line 172
    iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    .line 175
    return-void
.end method

.method private collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 7
    .param p1, "eos"    # C
    .param p2, "keepEscapes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "filter":Z
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .local v1, "start":I
    :goto_0
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    const/4 v4, -0x2

    const/16 v5, 0x22

    if-lt v2, v3, :cond_2

    .line 414
    if-eq p1, v5, :cond_1

    .line 419
    if-eqz v0, :cond_0

    .line 420
    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-static {v3, v1, v2, p2}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v2

    .local v2, "s":Ljava/lang/String;
    goto :goto_1

    .line 422
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 423
    .restart local v2    # "s":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Ljavax/mail/internet/HeaderTokenizer;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    new-instance v3, Ljavax/mail/internet/HeaderTokenizer$Token;

    invoke-direct {v3, v4, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v3

    .line 415
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljavax/mail/internet/ParseException;

    const-string v3, "Unbalanced quoted string"

    invoke-direct {v2, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 387
    :cond_2
    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 388
    .local v2, "c":C
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_3

    .line 389
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 390
    const/4 v0, 0x1

    .line 391
    goto :goto_3

    :cond_3
    const/16 v3, 0xd

    if-ne v2, v3, :cond_4

    .line 392
    const/4 v0, 0x1

    goto :goto_3

    .line 393
    :cond_4
    if-ne v2, p1, :cond_7

    .line 394
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 397
    if-eqz v0, :cond_5

    .line 398
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    add-int/lit8 v3, v3, -0x1

    invoke-static {v6, v1, v3, p2}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v3

    .local v3, "s":Ljava/lang/String;
    goto :goto_2

    .line 400
    .end local v3    # "s":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 402
    .restart local v3    # "s":Ljava/lang/String;
    :goto_2
    if-eq v2, v5, :cond_6

    .line 403
    invoke-static {v3}, Ljavax/mail/internet/HeaderTokenizer;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 404
    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 407
    :cond_6
    new-instance v5, Ljavax/mail/internet/HeaderTokenizer$Token;

    invoke-direct {v5, v4, v3}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v5

    .line 386
    .end local v2    # "c":C
    .end local v3    # "s":Ljava/lang/String;
    :cond_7
    :goto_3
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_0
.end method

.method private static filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "keepEscapes"    # Z

    .line 457
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 459
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 460
    .local v1, "gotEscape":Z
    const/4 v2, 0x0

    .line 462
    .local v2, "gotCR":Z
    move v3, p1

    .local v3, "i":I
    :goto_0
    if-lt v3, p2, :cond_0

    .line 493
    .end local v3    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 463
    .restart local v3    # "i":I
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 464
    .local v4, "c":C
    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    if-eqz v2, :cond_1

    .line 467
    const/4 v2, 0x0

    .line 468
    goto :goto_1

    .line 471
    :cond_1
    const/4 v2, 0x0

    .line 472
    const/16 v5, 0x5c

    if-nez v1, :cond_4

    .line 474
    if-ne v4, v5, :cond_2

    .line 475
    const/4 v1, 0x1

    goto :goto_1

    .line 476
    :cond_2
    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    .line 477
    const/4 v2, 0x1

    goto :goto_1

    .line 479
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 480
    goto :goto_1

    .line 487
    :cond_4
    if-eqz p3, :cond_5

    .line 488
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 489
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 490
    const/4 v1, 0x0

    .line 462
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getNext(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 10
    .param p1, "endOfAtom"    # C
    .param p2, "keepEscapes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 290
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v0, v1, :cond_0

    .line 291
    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object v0

    .line 294
    :cond_0
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 295
    sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object v0

    .line 299
    :cond_1
    const/4 v0, 0x0

    .line 301
    .local v0, "filter":Z
    iget-object v2, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 305
    .local v2, "c":C
    nop

    :goto_0
    const/16 v3, 0x28

    const/4 v4, 0x1

    if-eq v2, v3, :cond_a

    .line 345
    const/16 v1, 0x22

    if-ne v2, v1, :cond_2

    .line 346
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v3, v4

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 347
    invoke-direct {p0, v1, p2}, Ljavax/mail/internet/HeaderTokenizer;->collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    return-object v1

    .line 351
    :cond_2
    const/16 v5, 0x20

    if-lt v2, v5, :cond_8

    const/16 v6, 0x7f

    if-ge v2, v6, :cond_8

    iget-object v7, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_3

    goto :goto_4

    .line 364
    :cond_3
    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .local v7, "start":I
    :goto_1
    iget v8, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v9, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v8, v9, :cond_4

    goto :goto_3

    .line 365
    :cond_4
    iget-object v9, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 368
    if-lt v2, v5, :cond_6

    if-ge v2, v6, :cond_6

    if-eq v2, v3, :cond_6

    if-eq v2, v5, :cond_6

    .line 369
    if-eq v2, v1, :cond_6

    iget-object v8, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_5

    goto :goto_2

    .line 364
    :cond_5
    iget v8, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v8, v4

    iput v8, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_1

    .line 370
    :cond_6
    :goto_2
    if-lez p1, :cond_7

    if-eq v2, p1, :cond_7

    .line 373
    iput v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 374
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/HeaderTokenizer;->collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    return-object v1

    .line 379
    :cond_7
    :goto_3
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer$Token;

    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 352
    .end local v7    # "start":I
    :cond_8
    :goto_4
    if-lez p1, :cond_9

    if-eq v2, p1, :cond_9

    .line 355
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/HeaderTokenizer;->collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    return-object v1

    .line 357
    :cond_9
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v1, v4

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 358
    new-array v1, v4, [C

    .line 359
    .local v1, "ch":[C
    const/4 v3, 0x0

    aput-char v2, v1, v3

    .line 360
    new-instance v3, Ljavax/mail/internet/HeaderTokenizer$Token;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v3, v2, v4}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v3

    .line 308
    .end local v1    # "ch":[C
    :cond_a
    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v5, v4

    iput v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .local v5, "start":I
    const/4 v6, 0x1

    .line 309
    .local v6, "nesting":I
    nop

    :goto_5
    if-lez v6, :cond_10

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v8, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    .line 308
    if-lt v7, v8, :cond_b

    goto :goto_7

    .line 311
    :cond_b
    iget-object v8, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 312
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_c

    .line 313
    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v7, v4

    iput v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 314
    const/4 v0, 0x1

    .line 315
    goto :goto_6

    :cond_c
    const/16 v7, 0xd

    if-ne v2, v7, :cond_d

    .line 316
    const/4 v0, 0x1

    goto :goto_6

    .line 317
    :cond_d
    if-ne v2, v3, :cond_e

    .line 318
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 319
    :cond_e
    const/16 v7, 0x29

    if-ne v2, v7, :cond_f

    .line 320
    add-int/lit8 v6, v6, -0x1

    .line 310
    :cond_f
    :goto_6
    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v7, v4

    iput v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_5

    .line 322
    :cond_10
    :goto_7
    if-nez v6, :cond_14

    .line 325
    iget-boolean v3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    if-nez v3, :cond_12

    .line 329
    if-eqz v0, :cond_11

    .line 330
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr v3, v4

    invoke-static {v1, v5, v3, p2}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v1

    .local v1, "s":Ljava/lang/String;
    goto :goto_8

    .line 332
    .end local v1    # "s":Ljava/lang/String;
    :cond_11
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 334
    .restart local v1    # "s":Ljava/lang/String;
    :goto_8
    new-instance v3, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v4, -0x3

    invoke-direct {v3, v4, v1}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v3

    .line 338
    .end local v1    # "s":Ljava/lang/String;
    :cond_12
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v3

    if-ne v3, v1, :cond_13

    .line 339
    sget-object v1, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object v1

    .line 340
    :cond_13
    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto/16 :goto_0

    .line 323
    :cond_14
    new-instance v1, Ljavax/mail/internet/ParseException;

    const-string v3, "Unbalanced comments"

    invoke-direct {v1, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private skipWhiteSpace()I
    .locals 3

    .line 430
    nop

    :goto_0
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v0, v1, :cond_0

    .line 434
    const/4 v0, -0x4

    return v0

    .line 431
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v0

    .local v1, "c":C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    .line 432
    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    .line 433
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    return v0

    .line 430
    :cond_1
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_0
.end method

.method private static trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 441
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    goto :goto_1

    .line 442
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, v1

    .local v2, "c":C
    const/16 v3, 0x20

    if-eq v1, v3, :cond_2

    .line 443
    const/16 v1, 0x9

    if-eq v2, v1, :cond_2

    const/16 v1, 0xd

    if-eq v2, v1, :cond_2

    const/16 v1, 0xa

    if-eq v2, v1, :cond_2

    .line 444
    nop

    .line 446
    .end local v2    # "c":C
    :goto_1
    if-gtz v0, :cond_1

    .line 447
    const-string v1, ""

    return-object v1

    .line 449
    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 441
    .restart local v2    # "c":C
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getRemainder()Ljava/lang/String;
    .locals 2

    .line 277
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 278
    const/4 v0, 0x0

    return-object v0

    .line 279
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 208
    const/4 v0, 0x0

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

    .line 246
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 264
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Ljavax/mail/internet/HeaderTokenizer;->getNext(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 266
    .local v0, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    .line 267
    return-object v0
.end method
