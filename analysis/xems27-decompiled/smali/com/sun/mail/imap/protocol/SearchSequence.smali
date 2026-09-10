.class public Lcom/sun/mail/imap/protocol/SearchSequence;
.super Ljava/lang/Object;
.source "SearchSequence.java"


# static fields
.field private static monthTable:[Ljava/lang/String;


# instance fields
.field protected cal:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 398
    nop

    .line 399
    nop

    .line 400
    const-string v0, "Jan"

    const-string v1, "Feb"

    const-string v2, "Mar"

    const-string v3, "Apr"

    const-string v4, "May"

    const-string v5, "Jun"

    const-string v6, "Jul"

    const-string v7, "Aug"

    const-string v8, "Sep"

    const-string v9, "Oct"

    const-string v10, "Nov"

    const-string v11, "Dec"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 398
    sput-object v0, Lcom/sun/mail/imap/protocol/SearchSequence;->monthTable:[Ljava/lang/String;

    .line 401
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    .line 63
    return-void
.end method

.method public static isAscii(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 178
    .local v0, "l":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 182
    .end local v1    # "i":I
    const/4 v1, 0x1

    return v1

    .line 179
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_1

    .line 180
    const/4 v2, 0x0

    return v2

    .line 178
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isAscii(Ljavax/mail/search/SearchTerm;)Z
    .locals 1
    .param p0, "term"    # Ljavax/mail/search/SearchTerm;

    .line 140
    instance-of v0, p0, Ljavax/mail/search/AndTerm;

    if-eqz v0, :cond_0

    .line 141
    move-object v0, p0

    check-cast v0, Ljavax/mail/search/AndTerm;

    invoke-virtual {v0}, Ljavax/mail/search/AndTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii([Ljavax/mail/search/SearchTerm;)Z

    move-result v0

    return v0

    .line 142
    :cond_0
    instance-of v0, p0, Ljavax/mail/search/OrTerm;

    if-eqz v0, :cond_1

    .line 143
    move-object v0, p0

    check-cast v0, Ljavax/mail/search/OrTerm;

    invoke-virtual {v0}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii([Ljavax/mail/search/SearchTerm;)Z

    move-result v0

    return v0

    .line 144
    :cond_1
    instance-of v0, p0, Ljavax/mail/search/NotTerm;

    if-eqz v0, :cond_2

    .line 145
    move-object v0, p0

    check-cast v0, Ljavax/mail/search/NotTerm;

    invoke-virtual {v0}, Ljavax/mail/search/NotTerm;->getTerm()Ljavax/mail/search/SearchTerm;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljavax/mail/search/SearchTerm;)Z

    move-result v0

    return v0

    .line 146
    :cond_2
    instance-of v0, p0, Ljavax/mail/search/StringTerm;

    if-eqz v0, :cond_3

    .line 147
    move-object v0, p0

    check-cast v0, Ljavax/mail/search/StringTerm;

    invoke-virtual {v0}, Ljavax/mail/search/StringTerm;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 148
    :cond_3
    instance-of v0, p0, Ljavax/mail/search/AddressTerm;

    if-eqz v0, :cond_4

    .line 149
    move-object v0, p0

    check-cast v0, Ljavax/mail/search/AddressTerm;

    invoke-virtual {v0}, Ljavax/mail/search/AddressTerm;->getAddress()Ljavax/mail/Address;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 152
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static isAscii([Ljavax/mail/search/SearchTerm;)Z
    .locals 2
    .param p0, "terms"    # [Ljavax/mail/search/SearchTerm;

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 166
    .end local v0    # "i":I
    const/4 v0, 0x1

    return v0

    .line 164
    .restart local v0    # "i":I
    :cond_0
    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljavax/mail/search/SearchTerm;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    const/4 v1, 0x0

    return v1

    .line 163
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected and(Ljavax/mail/search/AndTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 4
    .param p1, "term"    # Ljavax/mail/search/AndTerm;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Ljavax/mail/search/AndTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v0

    .line 190
    .local v0, "terms":[Ljavax/mail/search/SearchTerm;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p0, v1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    .line 192
    .local v1, "result":Lcom/sun/mail/iap/Argument;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 194
    .end local v2    # "i":I
    return-object v1

    .line 193
    .restart local v2    # "i":I
    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {p0, v3, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected body(Ljavax/mail/search/BodyTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p1, "term"    # Ljavax/mail/search/BodyTerm;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 358
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    const-string v1, "BODY"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 359
    invoke-virtual {p1}, Ljavax/mail/search/BodyTerm;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 360
    return-object v0
.end method

.method protected flag(Ljavax/mail/search/FlagTerm;)Lcom/sun/mail/iap/Argument;
    .locals 8
    .param p1, "term"    # Ljavax/mail/search/FlagTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Ljavax/mail/search/FlagTerm;->getTestSet()Z

    move-result v0

    .line 288
    .local v0, "set":Z
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 290
    .local v1, "result":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p1}, Ljavax/mail/search/FlagTerm;->getFlags()Ljavax/mail/Flags;

    move-result-object v2

    .line 291
    .local v2, "flags":Ljavax/mail/Flags;
    invoke-virtual {v2}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v3

    .line 292
    .local v3, "sf":[Ljavax/mail/Flags$Flag;
    invoke-virtual {v2}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "uf":[Ljava/lang/String;
    array-length v5, v3

    if-nez v5, :cond_1

    array-length v5, v4

    if-eqz v5, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    new-instance v5, Ljavax/mail/search/SearchException;

    const-string v6, "Invalid FlagTerm"

    invoke-direct {v5, v6}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 296
    :cond_1
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v3

    if-lt v5, v6, :cond_4

    .line 311
    .end local v5    # "i":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    array-length v6, v4

    if-lt v5, v6, :cond_2

    .line 316
    .end local v5    # "i":I
    return-object v1

    .line 312
    .restart local v5    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    const-string v6, "KEYWORD"

    goto :goto_3

    :cond_3
    const-string v6, "UNKEYWORD"

    :goto_3
    invoke-virtual {v1, v6}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 313
    aget-object v6, v4, v5

    invoke-virtual {v1, v6}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 311
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 297
    :cond_4
    aget-object v6, v3, v5

    sget-object v7, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    if-ne v6, v7, :cond_6

    .line 298
    if-eqz v0, :cond_5

    const-string v6, "DELETED"

    goto :goto_4

    :cond_5
    const-string v6, "UNDELETED"

    :goto_4
    invoke-virtual {v1, v6}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_a

    .line 299
    :cond_6
    aget-object v6, v3, v5

    sget-object v7, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    if-ne v6, v7, :cond_8

    .line 300
    if-eqz v0, :cond_7

    const-string v6, "ANSWERED"

    goto :goto_5

    :cond_7
    const-string v6, "UNANSWERED"

    :goto_5
    invoke-virtual {v1, v6}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_a

    .line 301
    :cond_8
    aget-object v6, v3, v5

    sget-object v7, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    if-ne v6, v7, :cond_a

    .line 302
    if-eqz v0, :cond_9

    const-string v6, "DRAFT"

    goto :goto_6

    :cond_9
    const-string v6, "UNDRAFT"

    :goto_6
    invoke-virtual {v1, v6}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_a

    .line 303
    :cond_a
    aget-object v6, v3, v5

    sget-object v7, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    if-ne v6, v7, :cond_c

    .line 304
    if-eqz v0, :cond_b

    const-string v6, "FLAGGED"

    goto :goto_7

    :cond_b
    const-string v6, "UNFLAGGED"

    :goto_7
    invoke-virtual {v1, v6}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_a

    .line 305
    :cond_c
    aget-object v6, v3, v5

    sget-object v7, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    if-ne v6, v7, :cond_e

    .line 306
    if-eqz v0, :cond_d

    const-string v6, "RECENT"

    goto :goto_8

    :cond_d
    const-string v6, "OLD"

    :goto_8
    invoke-virtual {v1, v6}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_a

    .line 307
    :cond_e
    aget-object v6, v3, v5

    sget-object v7, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    if-ne v6, v7, :cond_10

    .line 308
    if-eqz v0, :cond_f

    const-string v6, "SEEN"

    goto :goto_9

    :cond_f
    const-string v6, "UNSEEN"

    :goto_9
    invoke-virtual {v1, v6}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 296
    :cond_10
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method protected from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 322
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    const-string v1, "FROM"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 323
    invoke-virtual {v0, p1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 324
    return-object v0
.end method

.method public generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    instance-of v0, p1, Ljavax/mail/search/AndTerm;

    if-eqz v0, :cond_0

    .line 81
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/AndTerm;

    invoke-virtual {p0, v0, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->and(Ljavax/mail/search/AndTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    instance-of v0, p1, Ljavax/mail/search/OrTerm;

    if-eqz v0, :cond_1

    .line 83
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/OrTerm;

    invoke-virtual {p0, v0, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->or(Ljavax/mail/search/OrTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    return-object v0

    .line 84
    :cond_1
    instance-of v0, p1, Ljavax/mail/search/NotTerm;

    if-eqz v0, :cond_2

    .line 85
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/NotTerm;

    invoke-virtual {p0, v0, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->not(Ljavax/mail/search/NotTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    return-object v0

    .line 86
    :cond_2
    instance-of v0, p1, Ljavax/mail/search/HeaderTerm;

    if-eqz v0, :cond_3

    .line 87
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/HeaderTerm;

    invoke-virtual {p0, v0, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->header(Ljavax/mail/search/HeaderTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    return-object v0

    .line 88
    :cond_3
    instance-of v0, p1, Ljavax/mail/search/FlagTerm;

    if-eqz v0, :cond_4

    .line 89
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/FlagTerm;

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/SearchSequence;->flag(Ljavax/mail/search/FlagTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    return-object v0

    .line 90
    :cond_4
    instance-of v0, p1, Ljavax/mail/search/FromTerm;

    if-eqz v0, :cond_5

    .line 91
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/FromTerm;

    .line 92
    .local v0, "fterm":Ljavax/mail/search/FromTerm;
    invoke-virtual {v0}, Ljavax/mail/search/FromTerm;->getAddress()Ljavax/mail/Address;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    return-object v1

    .line 94
    .end local v0    # "fterm":Ljavax/mail/search/FromTerm;
    :cond_5
    instance-of v0, p1, Ljavax/mail/search/FromStringTerm;

    if-eqz v0, :cond_6

    .line 95
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/FromStringTerm;

    .line 96
    .local v0, "fterm":Ljavax/mail/search/FromStringTerm;
    invoke-virtual {v0}, Ljavax/mail/search/FromStringTerm;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->from(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    return-object v1

    .line 98
    .end local v0    # "fterm":Ljavax/mail/search/FromStringTerm;
    :cond_6
    instance-of v0, p1, Ljavax/mail/search/RecipientTerm;

    if-eqz v0, :cond_7

    .line 99
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/RecipientTerm;

    .line 100
    .local v0, "rterm":Ljavax/mail/search/RecipientTerm;
    invoke-virtual {v0}, Ljavax/mail/search/RecipientTerm;->getRecipientType()Ljavax/mail/Message$RecipientType;

    move-result-object v1

    .line 101
    invoke-virtual {v0}, Ljavax/mail/search/RecipientTerm;->getAddress()Ljavax/mail/Address;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    nop

    .line 100
    invoke-virtual {p0, v1, v2, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    return-object v1

    .line 104
    .end local v0    # "rterm":Ljavax/mail/search/RecipientTerm;
    :cond_7
    instance-of v0, p1, Ljavax/mail/search/RecipientStringTerm;

    if-eqz v0, :cond_8

    .line 105
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/RecipientStringTerm;

    .line 106
    .local v0, "rterm":Ljavax/mail/search/RecipientStringTerm;
    invoke-virtual {v0}, Ljavax/mail/search/RecipientStringTerm;->getRecipientType()Ljavax/mail/Message$RecipientType;

    move-result-object v1

    .line 107
    invoke-virtual {v0}, Ljavax/mail/search/RecipientStringTerm;->getPattern()Ljava/lang/String;

    move-result-object v2

    .line 108
    nop

    .line 106
    invoke-virtual {p0, v1, v2, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v1

    return-object v1

    .line 110
    .end local v0    # "rterm":Ljavax/mail/search/RecipientStringTerm;
    :cond_8
    instance-of v0, p1, Ljavax/mail/search/SubjectTerm;

    if-eqz v0, :cond_9

    .line 111
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/SubjectTerm;

    invoke-virtual {p0, v0, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->subject(Ljavax/mail/search/SubjectTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    return-object v0

    .line 112
    :cond_9
    instance-of v0, p1, Ljavax/mail/search/BodyTerm;

    if-eqz v0, :cond_a

    .line 113
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/BodyTerm;

    invoke-virtual {p0, v0, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->body(Ljavax/mail/search/BodyTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    return-object v0

    .line 114
    :cond_a
    instance-of v0, p1, Ljavax/mail/search/SizeTerm;

    if-eqz v0, :cond_b

    .line 115
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/SizeTerm;

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/SearchSequence;->size(Ljavax/mail/search/SizeTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    return-object v0

    .line 116
    :cond_b
    instance-of v0, p1, Ljavax/mail/search/SentDateTerm;

    if-eqz v0, :cond_c

    .line 117
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/SentDateTerm;

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/SearchSequence;->sentdate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    return-object v0

    .line 118
    :cond_c
    instance-of v0, p1, Ljavax/mail/search/ReceivedDateTerm;

    if-eqz v0, :cond_d

    .line 119
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/ReceivedDateTerm;

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/SearchSequence;->receiveddate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    return-object v0

    .line 120
    :cond_d
    instance-of v0, p1, Lcom/sun/mail/imap/OlderTerm;

    if-eqz v0, :cond_e

    .line 121
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/OlderTerm;

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/SearchSequence;->older(Lcom/sun/mail/imap/OlderTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    return-object v0

    .line 122
    :cond_e
    instance-of v0, p1, Lcom/sun/mail/imap/YoungerTerm;

    if-eqz v0, :cond_f

    .line 123
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/YoungerTerm;

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/SearchSequence;->younger(Lcom/sun/mail/imap/YoungerTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    return-object v0

    .line 124
    :cond_f
    instance-of v0, p1, Ljavax/mail/search/MessageIDTerm;

    if-eqz v0, :cond_10

    .line 125
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/MessageIDTerm;

    invoke-virtual {p0, v0, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->messageid(Ljavax/mail/search/MessageIDTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    return-object v0

    .line 126
    :cond_10
    instance-of v0, p1, Lcom/sun/mail/imap/ModifiedSinceTerm;

    if-eqz v0, :cond_11

    .line 127
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/ModifiedSinceTerm;

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/SearchSequence;->modifiedSince(Lcom/sun/mail/imap/ModifiedSinceTerm;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    return-object v0

    .line 129
    :cond_11
    new-instance v0, Ljavax/mail/search/SearchException;

    const-string v1, "Search too complex"

    invoke-direct {v0, v1}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected header(Ljavax/mail/search/HeaderTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p1, "term"    # Ljavax/mail/search/HeaderTerm;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 269
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    const-string v1, "HEADER"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 270
    invoke-virtual {p1}, Ljavax/mail/search/HeaderTerm;->getHeaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 271
    invoke-virtual {p1}, Ljavax/mail/search/HeaderTerm;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 272
    return-object v0
.end method

.method protected messageid(Ljavax/mail/search/MessageIDTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p1, "term"    # Ljavax/mail/search/MessageIDTerm;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 278
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    const-string v1, "HEADER"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 279
    const-string v1, "Message-ID"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 281
    invoke-virtual {p1}, Ljavax/mail/search/MessageIDTerm;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 282
    return-object v0
.end method

.method protected modifiedSince(Lcom/sun/mail/imap/ModifiedSinceTerm;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p1, "term"    # Lcom/sun/mail/imap/ModifiedSinceTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 520
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 521
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    const-string v1, "MODSEQ"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 522
    invoke-virtual {p1}, Lcom/sun/mail/imap/ModifiedSinceTerm;->getModSeq()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sun/mail/iap/Argument;->writeNumber(J)Lcom/sun/mail/iap/Argument;

    .line 523
    return-object v0
.end method

.method protected not(Ljavax/mail/search/NotTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p1, "term"    # Ljavax/mail/search/NotTerm;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 250
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    const-string v1, "NOT"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 257
    invoke-virtual {p1}, Ljavax/mail/search/NotTerm;->getTerm()Ljavax/mail/search/SearchTerm;

    move-result-object v1

    .line 258
    .local v1, "nterm":Ljavax/mail/search/SearchTerm;
    instance-of v2, v1, Ljavax/mail/search/AndTerm;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljavax/mail/search/FlagTerm;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    goto :goto_1

    .line 259
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 263
    :goto_1
    return-object v0
.end method

.method protected older(Lcom/sun/mail/imap/OlderTerm;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p1, "term"    # Lcom/sun/mail/imap/OlderTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 489
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 490
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    const-string v1, "OLDER"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 491
    invoke-virtual {p1}, Lcom/sun/mail/imap/OlderTerm;->getInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeNumber(I)Lcom/sun/mail/iap/Argument;

    .line 492
    return-object v0
.end method

.method protected or(Ljavax/mail/search/OrTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 6
    .param p1, "term"    # Ljavax/mail/search/OrTerm;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-virtual {p1}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v0

    .line 205
    .local v0, "terms":[Ljavax/mail/search/SearchTerm;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    .line 206
    aget-object v1, v0, v2

    .line 209
    .local v1, "t":Ljavax/mail/search/SearchTerm;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_0

    .line 212
    .end local v3    # "i":I
    move-object p1, v1

    check-cast p1, Ljavax/mail/search/OrTerm;

    .line 214
    invoke-virtual {p1}, Ljavax/mail/search/OrTerm;->getTerms()[Ljavax/mail/search/SearchTerm;

    move-result-object v0

    goto :goto_1

    .line 210
    .restart local v3    # "i":I
    :cond_0
    new-instance v4, Ljavax/mail/search/OrTerm;

    aget-object v5, v0, v3

    invoke-direct {v4, v1, v5}, Ljavax/mail/search/OrTerm;-><init>(Ljavax/mail/search/SearchTerm;Ljavax/mail/search/SearchTerm;)V

    move-object v1, v4

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "t":Ljavax/mail/search/SearchTerm;
    .end local v3    # "i":I
    :cond_1
    :goto_1
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 221
    .local v1, "result":Lcom/sun/mail/iap/Argument;
    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 222
    const-string v3, "OR"

    invoke-virtual {v1, v3}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 229
    :cond_2
    aget-object v3, v0, v2

    instance-of v3, v3, Ljavax/mail/search/AndTerm;

    if-nez v3, :cond_4

    aget-object v3, v0, v2

    instance-of v3, v3, Ljavax/mail/search/FlagTerm;

    if-eqz v3, :cond_3

    goto :goto_2

    .line 232
    :cond_3
    aget-object v2, v0, v2

    invoke-virtual {p0, v2, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    goto :goto_3

    .line 230
    :cond_4
    :goto_2
    aget-object v2, v0, v2

    invoke-virtual {p0, v2, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 235
    :goto_3
    array-length v2, v0

    if-le v2, v4, :cond_7

    .line 236
    aget-object v2, v0, v4

    instance-of v2, v2, Ljavax/mail/search/AndTerm;

    if-nez v2, :cond_6

    aget-object v2, v0, v4

    instance-of v2, v2, Ljavax/mail/search/FlagTerm;

    if-eqz v2, :cond_5

    goto :goto_4

    .line 239
    :cond_5
    aget-object v2, v0, v4

    invoke-virtual {p0, v2, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->append(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    goto :goto_5

    .line 237
    :cond_6
    :goto_4
    aget-object v2, v0, v4

    invoke-virtual {p0, v2, p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 242
    :cond_7
    :goto_5
    return-object v1
.end method

.method protected receiveddate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;
    .locals 4
    .param p1, "term"    # Ljavax/mail/search/DateTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 451
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 452
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p1}, Ljavax/mail/search/DateTerm;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/SearchSequence;->toIMAPDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "date":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/mail/search/DateTerm;->getComparison()I

    move-result v2

    const-string v3, "NOT ON "

    packed-switch v2, :pswitch_data_0

    .line 474
    new-instance v2, Ljavax/mail/search/SearchException;

    const-string v3, "Cannot handle Date Comparison"

    invoke-direct {v2, v3}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 465
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SINCE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 466
    goto :goto_0

    .line 456
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " SINCE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 457
    goto :goto_0

    .line 471
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 472
    goto :goto_0

    .line 459
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ON "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 460
    goto :goto_0

    .line 462
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BEFORE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 463
    goto :goto_0

    .line 468
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OR BEFORE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 469
    nop

    .line 477
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected recipient(Ljavax/mail/Message$RecipientType;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p1, "type"    # Ljavax/mail/Message$RecipientType;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 332
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne p1, v1, :cond_0

    .line 333
    const-string v1, "TO"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 334
    :cond_0
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v1, :cond_1

    .line 335
    const-string v1, "CC"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 336
    :cond_1
    sget-object v1, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v1, :cond_2

    .line 337
    const-string v1, "BCC"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 341
    :goto_0
    invoke-virtual {v0, p2, p3}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 342
    return-object v0

    .line 339
    :cond_2
    new-instance v1, Ljavax/mail/search/SearchException;

    const-string v2, "Illegal Recipient type"

    invoke-direct {v1, v2}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected sentdate(Ljavax/mail/search/DateTerm;)Lcom/sun/mail/iap/Argument;
    .locals 4
    .param p1, "term"    # Ljavax/mail/search/DateTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 420
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 421
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p1}, Ljavax/mail/search/DateTerm;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/SearchSequence;->toIMAPDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "date":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/mail/search/DateTerm;->getComparison()I

    move-result v2

    const-string v3, "NOT SENTON "

    packed-switch v2, :pswitch_data_0

    .line 443
    new-instance v2, Ljavax/mail/search/SearchException;

    const-string v3, "Cannot handle Date Comparison"

    invoke-direct {v2, v3}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 434
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SENTSINCE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 435
    goto :goto_0

    .line 425
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " SENTSINCE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 426
    goto :goto_0

    .line 440
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 441
    goto :goto_0

    .line 428
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SENTON "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 429
    goto :goto_0

    .line 431
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SENTBEFORE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 432
    goto :goto_0

    .line 437
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OR SENTBEFORE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " SENTON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 438
    nop

    .line 446
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected size(Ljavax/mail/search/SizeTerm;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p1, "term"    # Ljavax/mail/search/SizeTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 365
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 367
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    invoke-virtual {p1}, Ljavax/mail/search/SizeTerm;->getComparison()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 369
    const-string v1, "LARGER"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 370
    goto :goto_0

    .line 376
    :cond_0
    new-instance v1, Ljavax/mail/search/SearchException;

    const-string v2, "Cannot handle Comparison"

    invoke-direct {v1, v2}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    :cond_1
    const-string v1, "SMALLER"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 373
    nop

    .line 379
    :goto_0
    invoke-virtual {p1}, Ljavax/mail/search/SizeTerm;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeNumber(I)Lcom/sun/mail/iap/Argument;

    .line 380
    return-object v0
.end method

.method protected subject(Ljavax/mail/search/SubjectTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p1, "term"    # Ljavax/mail/search/SubjectTerm;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 349
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    const-string v1, "SUBJECT"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 350
    invoke-virtual {p1}, Ljavax/mail/search/SubjectTerm;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 351
    return-object v0
.end method

.method protected toIMAPDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    .line 407
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 409
    .local v0, "s":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 411
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    sget-object v1, Lcom/sun/mail/imap/protocol/SearchSequence;->monthTable:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 413
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/SearchSequence;->cal:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 415
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected younger(Lcom/sun/mail/imap/YoungerTerm;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p1, "term"    # Lcom/sun/mail/imap/YoungerTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .line 504
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 505
    .local v0, "result":Lcom/sun/mail/iap/Argument;
    const-string v1, "YOUNGER"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 506
    invoke-virtual {p1}, Lcom/sun/mail/imap/YoungerTerm;->getInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeNumber(I)Lcom/sun/mail/iap/Argument;

    .line 507
    return-object v0
.end method
