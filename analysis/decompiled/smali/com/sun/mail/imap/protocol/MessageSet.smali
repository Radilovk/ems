.class public Lcom/sun/mail/imap/protocol/MessageSet;
.super Ljava/lang/Object;
.source "MessageSet.java"


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 58
    iput p2, p0, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 59
    return-void
.end method

.method public static createMessageSets([I)[Lcom/sun/mail/imap/protocol/MessageSet;
    .locals 6
    .param p0, "msgs"    # [I

    .prologue
    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v3, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/MessageSet;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_0

    .line 93
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sun/mail/imap/protocol/MessageSet;

    return-object v4

    .line 81
    :cond_0
    new-instance v2, Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-direct {v2}, Lcom/sun/mail/imap/protocol/MessageSet;-><init>()V

    .line 82
    .local v2, "ms":Lcom/sun/mail/imap/protocol/MessageSet;
    aget v4, p0, v0

    iput v4, v2, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 85
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_1
    array-length v4, p0

    if-lt v1, v4, :cond_2

    .line 89
    :cond_1
    add-int/lit8 v4, v1, -0x1

    aget v4, p0, v4

    iput v4, v2, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 90
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v1, -0x1

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_2
    aget v4, p0, v1

    add-int/lit8 v5, v1, -0x1

    aget v5, p0, v5

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static size([Lcom/sun/mail/imap/protocol/MessageSet;)I
    .locals 4
    .param p0, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "count":I
    if-nez p0, :cond_0

    .line 137
    const/4 v3, 0x0

    move v1, v0

    .line 142
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    return v3

    .line 139
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p0

    if-lt v2, v3, :cond_1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    move v3, v0

    .line 142
    goto :goto_0

    .line 140
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/MessageSet;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;
    .locals 7
    .param p0, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;

    .prologue
    .line 103
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 104
    :cond_0
    const/4 v5, 0x0

    .line 126
    :goto_0
    return-object v5

    .line 106
    :cond_1
    const/4 v1, 0x0

    .line 107
    .local v1, "i":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v2, "s":Ljava/lang/StringBuffer;
    array-length v3, p0

    .line 112
    .local v3, "size":I
    :goto_1
    aget-object v5, p0, v1

    iget v4, v5, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 113
    .local v4, "start":I
    aget-object v5, p0, v1

    iget v0, v5, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 115
    .local v0, "end":I
    if-le v0, v4, :cond_2

    .line 116
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 120
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 121
    if-lt v1, v3, :cond_3

    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 124
    :cond_3
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public size()I
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    iget v1, p0, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
