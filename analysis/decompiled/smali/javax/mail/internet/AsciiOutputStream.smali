.class Ljavax/mail/internet/AsciiOutputStream;
.super Ljava/io/OutputStream;
.source "MimeUtility.java"


# instance fields
.field private ascii:I

.field private badEOL:Z

.field private breakOnNonAscii:Z

.field private checkEOL:Z

.field private lastb:I

.field private linelen:I

.field private longLine:Z

.field private non_ascii:I

.field private ret:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "breakOnNonAscii"    # Z
    .param p2, "encodeEolStrict"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1599
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1591
    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->ascii:I

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->non_ascii:I

    .line 1592
    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->linelen:I

    .line 1593
    iput-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->longLine:Z

    .line 1594
    iput-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->badEOL:Z

    .line 1595
    iput-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->checkEOL:Z

    .line 1596
    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->lastb:I

    .line 1597
    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->ret:I

    .line 1600
    iput-boolean p1, p0, Ljavax/mail/internet/AsciiOutputStream;->breakOnNonAscii:Z

    .line 1601
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->checkEOL:Z

    .line 1602
    return-void
.end method

.method private final check(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0xd

    const/16 v1, 0xa

    .line 1619
    and-int/lit16 p1, p1, 0xff

    .line 1620
    iget-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->checkEOL:Z

    if-eqz v0, :cond_2

    .line 1621
    iget v0, p0, Ljavax/mail/internet/AsciiOutputStream;->lastb:I

    if-ne v0, v2, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    iget v0, p0, Ljavax/mail/internet/AsciiOutputStream;->lastb:I

    if-eq v0, v2, :cond_2

    if-ne p1, v1, :cond_2

    .line 1622
    :cond_1
    iput-boolean v3, p0, Ljavax/mail/internet/AsciiOutputStream;->badEOL:Z

    .line 1623
    :cond_2
    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_5

    .line 1624
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->linelen:I

    .line 1630
    :cond_4
    :goto_0
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1631
    iget v0, p0, Ljavax/mail/internet/AsciiOutputStream;->non_ascii:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->non_ascii:I

    .line 1632
    iget-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->breakOnNonAscii:Z

    if-eqz v0, :cond_7

    .line 1633
    const/4 v0, 0x3

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->ret:I

    .line 1634
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 1626
    :cond_5
    iget v0, p0, Ljavax/mail/internet/AsciiOutputStream;->linelen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->linelen:I

    .line 1627
    iget v0, p0, Ljavax/mail/internet/AsciiOutputStream;->linelen:I

    const/16 v1, 0x3e6

    if-le v0, v1, :cond_4

    .line 1628
    iput-boolean v3, p0, Ljavax/mail/internet/AsciiOutputStream;->longLine:Z

    goto :goto_0

    .line 1637
    :cond_6
    iget v0, p0, Ljavax/mail/internet/AsciiOutputStream;->ascii:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->ascii:I

    .line 1638
    :cond_7
    iput p1, p0, Ljavax/mail/internet/AsciiOutputStream;->lastb:I

    .line 1639
    return-void
.end method


# virtual methods
.method public getAscii()I
    .locals 4

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 1645
    iget v2, p0, Ljavax/mail/internet/AsciiOutputStream;->ret:I

    if-eqz v2, :cond_1

    .line 1646
    iget v0, p0, Ljavax/mail/internet/AsciiOutputStream;->ret:I

    .line 1662
    :cond_0
    :goto_0
    return v0

    .line 1651
    :cond_1
    iget-boolean v2, p0, Ljavax/mail/internet/AsciiOutputStream;->badEOL:Z

    if-nez v2, :cond_0

    .line 1653
    iget v2, p0, Ljavax/mail/internet/AsciiOutputStream;->non_ascii:I

    if-nez v2, :cond_3

    .line 1655
    iget-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->longLine:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 1656
    goto :goto_0

    .line 1658
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1660
    :cond_3
    iget v2, p0, Ljavax/mail/internet/AsciiOutputStream;->ascii:I

    iget v3, p0, Ljavax/mail/internet/AsciiOutputStream;->non_ascii:I

    if-le v2, v3, :cond_0

    move v0, v1

    .line 1661
    goto :goto_0
.end method

.method public write(I)V
    .locals 0
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1605
    invoke-direct {p0, p1}, Ljavax/mail/internet/AsciiOutputStream;->check(I)V

    .line 1606
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1609
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljavax/mail/internet/AsciiOutputStream;->write([BII)V

    .line 1610
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1613
    add-int/2addr p3, p2

    .line 1614
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 1616
    return-void

    .line 1615
    :cond_0
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Ljavax/mail/internet/AsciiOutputStream;->check(I)V

    .line 1614
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
