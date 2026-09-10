.class public Ljavax/mail/URLName;
.super Ljava/lang/Object;
.source "URLName.java"


# static fields
.field static final caseDiff:I = 0x20

.field private static doEncode:Z

.field static dontNeedEncoding:Ljava/util/BitSet;


# instance fields
.field private file:Ljava/lang/String;

.field protected fullURL:Ljava/lang/String;

.field private hashCode:I

.field private host:Ljava/lang/String;

.field private hostAddress:Ljava/net/InetAddress;

.field private hostAddressKnown:Z

.field private password:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 123
    const/4 v0, 0x1

    sput-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    .line 127
    :try_start_0
    const-string v1, "mail.URLName.dontencode"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Ljavax/mail/URLName;->doEncode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 553
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    .line 555
    const/16 v0, 0x61

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x7a

    if-le v0, v1, :cond_3

    .line 558
    const/16 v0, 0x41

    :goto_2
    const/16 v1, 0x5a

    if-le v0, v1, :cond_2

    .line 561
    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-le v0, v1, :cond_1

    .line 565
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 566
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 567
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 568
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 569
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 570
    .end local v0    # "i":I
    return-void

    .line 562
    .restart local v0    # "i":I
    :cond_1
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 559
    :cond_2
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 556
    :cond_3
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    .line 103
    const/4 v1, -0x1

    iput v1, p0, Ljavax/mail/URLName;->port:I

    .line 118
    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    .line 186
    invoke-virtual {p0, p1}, Ljavax/mail/URLName;->parseString(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "username"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    .line 103
    const/4 v1, -0x1

    iput v1, p0, Ljavax/mail/URLName;->port:I

    .line 118
    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    .line 155
    iput-object p1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    .line 156
    iput-object p2, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    .line 157
    iput p3, p0, Ljavax/mail/URLName;->port:I

    .line 159
    if-eqz p4, :cond_0

    const/16 v2, 0x23

    invoke-virtual {p4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v3, v2

    .local v3, "refStart":I
    if-eq v2, v1, :cond_0

    .line 160
    invoke-virtual {p4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 161
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    .line 162
    goto :goto_0

    .line 163
    .end local v3    # "refStart":I
    :cond_0
    iput-object p4, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    .line 166
    :goto_0
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_1

    invoke-static {p5}, Ljavax/mail/URLName;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p5

    :goto_1
    iput-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    .line 167
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_2

    invoke-static {p6}, Ljavax/mail/URLName;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p6

    :goto_2
    iput-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .line 176
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private static _encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .line 591
    const/16 v0, 0xa

    .line 592
    .local v0, "maxBytesPerChar":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 593
    .local v1, "out":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 594
    .local v2, "buf":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 596
    .local v3, "writer":Ljava/io/OutputStreamWriter;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 632
    .end local v4    # "i":I
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 597
    .restart local v4    # "i":I
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 598
    .local v5, "c":I
    sget-object v6, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 599
    const/16 v6, 0x20

    if-ne v5, v6, :cond_1

    .line 600
    const/16 v5, 0x2b

    .line 602
    :cond_1
    int-to-char v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 603
    goto :goto_2

    .line 606
    :cond_2
    :try_start_0
    invoke-virtual {v3, v5}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 607
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    nop

    .line 612
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 613
    .local v6, "ba":[B
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    array-length v8, v6

    if-lt v7, v8, :cond_3

    .line 628
    .end local v7    # "j":I
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_2

    .line 614
    .restart local v7    # "j":I
    :cond_3
    const/16 v8, 0x25

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 615
    aget-byte v8, v6, v7

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    .line 618
    .local v8, "ch":C
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 619
    add-int/lit8 v10, v8, -0x20

    int-to-char v8, v10

    .line 621
    :cond_4
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 622
    aget-byte v10, v6, v7

    and-int/lit8 v10, v10, 0xf

    invoke-static {v10, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    .line 623
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 624
    add-int/lit8 v9, v8, -0x20

    int-to-char v8, v9

    .line 626
    :cond_5
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 613
    .end local v8    # "ch":C
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 608
    .end local v6    # "ba":[B
    .end local v7    # "j":I
    :catch_0
    move-exception v6

    .line 609
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 610
    nop

    .line 596
    .end local v5    # "c":I
    .end local v6    # "e":Ljava/io/IOException;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 666
    if-nez p0, :cond_0

    .line 667
    const/4 v0, 0x0

    return-object v0

    .line 668
    :cond_0
    const-string v0, "+%"

    invoke-static {p0, v0}, Ljavax/mail/URLName;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 669
    return-object p0

    .line 671
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 672
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 695
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    const-string v2, "8859_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 698
    .local v2, "inputBytes":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .end local v2    # "inputBytes":[B
    goto :goto_1

    .line 699
    :catch_0
    move-exception v2

    :goto_1
    nop

    .line 702
    return-object v1

    .line 673
    .local v1, "i":I
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 674
    .local v2, "c":C
    const/16 v3, 0x25

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_3

    .line 690
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 676
    :cond_3
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 677
    goto :goto_2

    .line 680
    :cond_4
    nop

    .line 681
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x3

    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    .line 680
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 682
    nop

    .line 687
    add-int/lit8 v1, v1, 0x2

    .line 688
    nop

    .line 672
    .end local v2    # "c":C
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 682
    .restart local v2    # "c":C
    :catch_1
    move-exception v3

    .line 683
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 684
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal URL encoded value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 685
    add-int/lit8 v6, v1, 0x3

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 683
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 579
    if-nez p0, :cond_0

    .line 580
    const/4 v0, 0x0

    return-object v0

    .line 582
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 587
    .end local v0    # "i":I
    return-object p0

    .line 583
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 584
    .local v1, "c":I
    const/16 v2, 0x20

    if-eq v1, v2, :cond_3

    sget-object v2, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 582
    .end local v1    # "c":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 585
    .restart local v1    # "c":I
    :cond_3
    :goto_1
    invoke-static {p0}, Ljavax/mail/URLName;->_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private declared-synchronized getHostAddress()Ljava/net/InetAddress;
    .locals 2

    monitor-enter p0

    .line 512
    :try_start_0
    iget-boolean v0, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 514
    .end local p0    # "this":Ljavax/mail/URLName;
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 515
    monitor-exit p0

    return-object v1

    .line 517
    :cond_1
    :try_start_2
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 518
    goto :goto_0

    :catch_0
    move-exception v0

    .line 519
    .local v0, "ex":Ljava/net/UnknownHostException;
    :try_start_3
    iput-object v1, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;

    .line 521
    .end local v0    # "ex":Ljava/net/UnknownHostException;
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    .line 522
    iget-object v0, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;

    .line 712
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/URLName;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 717
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 718
    .local v1, "len":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 722
    .end local v2    # "i":I
    return v0

    .line 719
    .restart local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_1

    .line 720
    return v2

    .line 718
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 723
    .end local v1    # "len":I
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 724
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 437
    instance-of v0, p1, Ljavax/mail/URLName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 438
    return v1

    .line 439
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/URLName;

    .line 442
    .local v0, "u2":Ljavax/mail/URLName;
    iget-object v2, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    iget-object v3, v0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    .line 443
    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 444
    :cond_1
    return v1

    .line 447
    :cond_2
    invoke-direct {p0}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v2

    .local v2, "a1":Ljava/net/InetAddress;
    invoke-direct {v0}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 449
    .local v3, "a2":Ljava/net/InetAddress;
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 450
    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 451
    return v1

    .line 453
    :cond_3
    iget-object v4, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v5, v0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 454
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 455
    return v1

    .line 457
    :cond_4
    iget-object v4, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    iget-object v5, v0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eq v4, v5, :cond_5

    .line 458
    return v1

    .line 463
    :cond_5
    iget-object v4, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    iget-object v5, v0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eq v4, v5, :cond_7

    .line 464
    if-eqz v4, :cond_6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 465
    :cond_6
    return v1

    .line 471
    :cond_7
    iget-object v4, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    const-string v5, ""

    if-nez v4, :cond_8

    move-object v4, v5

    .line 472
    .local v4, "f1":Ljava/lang/String;
    :cond_8
    iget-object v6, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-nez v6, :cond_9

    goto :goto_0

    :cond_9
    move-object v5, v6

    .line 474
    .local v5, "f2":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 475
    return v1

    .line 478
    :cond_a
    iget v6, p0, Ljavax/mail/URLName;->port:I

    iget v7, v0, Ljavax/mail/URLName;->port:I

    if-eq v6, v7, :cond_b

    .line 479
    return v1

    .line 482
    :cond_b
    const/4 v1, 0x1

    return v1
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 382
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 402
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/URLName;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 342
    iget v0, p0, Ljavax/mail/URLName;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/mail/URLName;->getPort()I

    move-result v3

    invoke-virtual {p0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 392
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/URLName;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 489
    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    if-eqz v0, :cond_0

    .line 490
    return v0

    .line 491
    :cond_0
    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 492
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    .line 493
    :cond_1
    invoke-direct {p0}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 494
    .local v0, "addr":Ljava/net/InetAddress;
    if-eqz v0, :cond_2

    .line 495
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    goto :goto_0

    .line 496
    :cond_2
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 497
    iget v2, p0, Ljavax/mail/URLName;->hashCode:I

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Ljavax/mail/URLName;->hashCode:I

    .line 498
    :cond_3
    :goto_0
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 499
    iget v2, p0, Ljavax/mail/URLName;->hashCode:I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Ljavax/mail/URLName;->hashCode:I

    .line 500
    :cond_4
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 501
    iget v2, p0, Ljavax/mail/URLName;->hashCode:I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Ljavax/mail/URLName;->hashCode:I

    .line 502
    :cond_5
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    iget v2, p0, Ljavax/mail/URLName;->port:I

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 503
    return v1
.end method

.method protected parseString(Ljava/lang/String;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    .line 259
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/URLName;->port:I

    .line 261
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 266
    .local v1, "len":I
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 267
    .local v3, "protocolEnd":I
    const/4 v4, 0x0

    if-eq v3, v0, :cond_0

    .line 268
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    .line 271
    :cond_0
    add-int/lit8 v5, v3, 0x1

    const/4 v6, 0x2

    const-string v7, "//"

    invoke-virtual {p1, v5, v7, v4, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 273
    const/4 v5, 0x0

    .line 274
    .local v5, "fullhost":Ljava/lang/String;
    const/16 v6, 0x2f

    add-int/lit8 v7, v3, 0x3

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 275
    .local v6, "fileStart":I
    if-eq v6, v0, :cond_2

    .line 276
    add-int/lit8 v7, v3, 0x3

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 277
    add-int/lit8 v7, v6, 0x1

    if-ge v7, v1, :cond_1

    .line 278
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_0

    .line 280
    :cond_1
    const-string v7, ""

    iput-object v7, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 281
    goto :goto_0

    .line 282
    :cond_2
    add-int/lit8 v7, v3, 0x3

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 285
    :goto_0
    const/16 v7, 0x40

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 286
    .local v7, "i":I
    if-eq v7, v0, :cond_4

    .line 287
    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, "fulluserpass":Ljava/lang/String;
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 291
    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 292
    .local v9, "passindex":I
    if-eq v9, v0, :cond_3

    .line 293
    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    .line 294
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    .line 295
    goto :goto_1

    .line 296
    :cond_3
    iput-object v8, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    .line 302
    .end local v8    # "fulluserpass":Ljava/lang/String;
    .end local v9    # "passindex":I
    :cond_4
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_5

    .line 304
    const/16 v8, 0x5d

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v5, v2, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 305
    .local v2, "portindex":I
    goto :goto_2

    .line 306
    .end local v2    # "portindex":I
    :cond_5
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 308
    .restart local v2    # "portindex":I
    :goto_2
    if-eq v2, v0, :cond_7

    .line 309
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 310
    .local v8, "portstring":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 312
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Ljavax/mail/URLName;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    goto :goto_3

    :catch_0
    move-exception v9

    .line 314
    .local v9, "nfex":Ljava/lang/NumberFormatException;
    iput v0, p0, Ljavax/mail/URLName;->port:I

    .line 318
    .end local v9    # "nfex":Ljava/lang/NumberFormatException;
    :cond_6
    :goto_3
    invoke-virtual {v5, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    .line 319
    .end local v8    # "portstring":Ljava/lang/String;
    goto :goto_4

    .line 320
    :cond_7
    iput-object v5, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    .line 322
    .end local v2    # "portindex":I
    .end local v5    # "fullhost":Ljava/lang/String;
    .end local v6    # "fileStart":I
    .end local v7    # "i":I
    goto :goto_4

    .line 323
    :cond_8
    add-int/lit8 v2, v3, 0x1

    if-ge v2, v1, :cond_9

    .line 324
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 329
    :cond_9
    :goto_4
    iget-object v2, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v2, :cond_a

    const/16 v5, 0x23

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v5, v2

    .local v5, "refStart":I
    if-eq v2, v0, :cond_a

    .line 330
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 333
    .end local v5    # "refStart":I
    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 193
    iget-object v0, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 195
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .local v0, "tempURL":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    const-string v2, ":"

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    :cond_0
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 203
    :cond_1
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    iget-object v1, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    iget-object v1, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    :cond_2
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    :cond_3
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    :cond_4
    iget v1, p0, Ljavax/mail/URLName;->port:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    iget v1, p0, Ljavax/mail/URLName;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    :cond_5
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 229
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    :cond_6
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    :cond_7
    iget-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 239
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    iget-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    .line 247
    .end local v0    # "tempURL":Ljava/lang/StringBuffer;
    :cond_9
    iget-object v0, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    return-object v0
.end method
