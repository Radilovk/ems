.class public Lcom/sun/mail/imap/protocol/FLAGS;
.super Ljavax/mail/Flags;
.source "FLAGS.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field static final name:[C

.field private static final serialVersionUID:J = 0x617d1827c5428feL


# instance fields
.field public msgno:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C

    .line 58
    return-void

    nop

    :array_0
    .array-data 2
        0x46s
        0x4cs
        0x41s
        0x47s
        0x53s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .locals 7
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/IMAPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljavax/mail/Flags;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/FLAGS;->msgno:I

    .line 69
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    .line 70
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readSimpleList()[Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "flags":[Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    goto/16 :goto_3

    .line 73
    :cond_0
    aget-object v2, v0, v1

    .line 74
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_b

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_b

    .line 75
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_a

    const/16 v5, 0x41

    if-eq v3, v5, :cond_9

    const/16 v5, 0x44

    const/16 v6, 0x52

    if-eq v3, v5, :cond_4

    const/16 v4, 0x46

    if-eq v3, v4, :cond_3

    if-eq v3, v6, :cond_2

    const/16 v4, 0x53

    if-eq v3, v4, :cond_1

    .line 102
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljava/lang/String;)V

    .line 105
    goto :goto_2

    .line 77
    :cond_1
    sget-object v3, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    .line 78
    goto :goto_2

    .line 80
    :cond_2
    sget-object v3, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    .line 81
    goto :goto_2

    .line 96
    :cond_3
    sget-object v3, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    .line 97
    goto :goto_2

    .line 83
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x3

    if-lt v3, v5, :cond_8

    .line 84
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 85
    .local v3, "c":C
    const/16 v4, 0x65

    if-eq v3, v4, :cond_7

    const/16 v4, 0x45

    if-ne v3, v4, :cond_5

    goto :goto_1

    .line 87
    :cond_5
    const/16 v4, 0x72

    if-eq v3, v4, :cond_6

    if-ne v3, v6, :cond_c

    .line 88
    :cond_6
    sget-object v4, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    .line 89
    .end local v3    # "c":C
    goto :goto_2

    .line 86
    .restart local v3    # "c":C
    :cond_7
    :goto_1
    sget-object v4, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    goto :goto_2

    .line 90
    .end local v3    # "c":C
    :cond_8
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljava/lang/String;)V

    .line 91
    goto :goto_2

    .line 93
    :cond_9
    sget-object v3, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    .line 94
    goto :goto_2

    .line 99
    :cond_a
    sget-object v3, Ljavax/mail/Flags$Flag;->USER:Ljavax/mail/Flags$Flag;

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljavax/mail/Flags$Flag;)V

    .line 100
    goto :goto_2

    .line 106
    :cond_b
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FLAGS;->add(Ljava/lang/String;)V

    .line 72
    .end local v2    # "s":Ljava/lang/String;
    :cond_c
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_d
    :goto_3
    return-void
.end method
