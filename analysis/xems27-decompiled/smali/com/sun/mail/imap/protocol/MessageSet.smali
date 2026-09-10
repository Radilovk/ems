.class public Lcom/sun/mail/imap/protocol/MessageSet;
.super Ljava/lang/Object;
.source "MessageSet.java"


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

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

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/MessageSet;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/MessageSet;

    return-object v2

    .line 81
    :cond_0
    new-instance v2, Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-direct {v2}, Lcom/sun/mail/imap/protocol/MessageSet;-><init>()V

    .line 82
    .local v2, "ms":Lcom/sun/mail/imap/protocol/MessageSet;
    aget v3, p0, v1

    iput v3, v2, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 85
    add-int/lit8 v3, v1, 0x1

    .local v3, "j":I
    :goto_1
    array-length v4, p0

    if-lt v3, v4, :cond_1

    goto :goto_2

    .line 86
    :cond_1
    aget v4, p0, v3

    add-int/lit8 v5, v3, -0x1

    aget v5, p0, v5

    add-int/lit8 v5, v5, 0x1

    if-eq v4, v5, :cond_2

    .line 87
    nop

    .line 89
    :goto_2
    add-int/lit8 v4, v3, -0x1

    aget v4, p0, v4

    iput v4, v2, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 90
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v1, v3, -0x1

    .line 80
    .end local v2    # "ms":Lcom/sun/mail/imap/protocol/MessageSet;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .restart local v2    # "ms":Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static size([Lcom/sun/mail/imap/protocol/MessageSet;)I
    .locals 3
    .param p0, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "count":I
    if-nez p0, :cond_0

    .line 137
    const/4 v1, 0x0

    return v1

    .line 139
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 142
    .end local v1    # "i":I
    return v0

    .line 140
    .restart local v1    # "i":I
    :cond_1
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/MessageSet;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;
    .locals 6
    .param p0, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;

    .line 103
    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 107
    .local v0, "i":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v1, "s":Ljava/lang/StringBuffer;
    array-length v2, p0

    .line 112
    .local v2, "size":I
    :goto_0
    aget-object v3, p0, v0

    iget v3, v3, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 113
    .local v3, "start":I
    aget-object v4, p0, v0

    iget v4, v4, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 115
    .local v4, "end":I
    if-le v4, v3, :cond_1

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 120
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 121
    if-lt v0, v2, :cond_2

    .line 122
    nop

    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 124
    :cond_2
    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    .end local v3    # "start":I
    .end local v4    # "end":I
    goto :goto_0

    .line 104
    .end local v0    # "i":I
    .end local v1    # "s":Ljava/lang/StringBuffer;
    .end local v2    # "size":I
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public size()I
    .locals 2

    .line 67
    iget v0, p0, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    iget v1, p0, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
