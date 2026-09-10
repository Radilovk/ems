.class Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;
.super Ljava/lang/Object;
.source "CellDateFormatter.java"

# interfaces
.implements Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/format/CellDateFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatePartHandler"
.end annotation


# instance fields
.field private hLen:I

.field private hStart:I

.field private mLen:I

.field private mStart:I

.field final synthetic this$0:Lorg/apache/poi/ss/format/CellDateFormatter;


# direct methods
.method private constructor <init>(Lorg/apache/poi/ss/format/CellDateFormatter;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    .line 56
    iput p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hStart:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/ss/format/CellDateFormatter;Lorg/apache/poi/ss/format/CellDateFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;
    .param p2, "x1"    # Lorg/apache/poi/ss/format/CellDateFormatter$1;

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;-><init>(Lorg/apache/poi/ss/format/CellDateFormatter;)V

    return-void
.end method


# virtual methods
.method public finish(Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;

    .line 134
    iget v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hStart:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-static {v0}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$100(Lorg/apache/poi/ss/format/CellDateFormatter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hLen:I

    if-ge v0, v1, :cond_0

    .line 136
    iget v1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hStart:I

    add-int/2addr v1, v0

    const/16 v2, 0x48

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public handlePart(Ljava/util/regex/Matcher;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 8
    .param p1, "m"    # Ljava/util/regex/Matcher;
    .param p2, "part"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/apache/poi/ss/format/CellFormatType;
    .param p4, "desc"    # Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 63
    .local v0, "pos":I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 64
    .local v2, "firstCh":C
    const/16 v3, 0x6d

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    move v5, v1

    .local v5, "sLen":I
    goto/16 :goto_2

    .line 101
    .end local v5    # "sLen":I
    :sswitch_0
    iput v4, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    .line 102
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 103
    const-string p2, "yyyy"

    .line 104
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 67
    :sswitch_1
    iget v1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    if-ltz v1, :cond_2

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mLen:I

    if-ge v1, v5, :cond_1

    .line 69
    iget v5, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    add-int/2addr v5, v1

    invoke-virtual {p4, v5, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "i":I
    :cond_1
    iput v4, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    .line 72
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 91
    :sswitch_2
    iput v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    .line 92
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mLen:I

    .line 94
    iget v1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hStart:I

    if-ltz v1, :cond_3

    .line 95
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 97
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 76
    :sswitch_3
    iput v4, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    .line 77
    iput v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hStart:I

    .line 78
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hLen:I

    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 83
    :sswitch_4
    iput v4, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    .line 84
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_4

    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 87
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x64

    const/16 v4, 0x45

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 64
    :sswitch_5
    move v5, v1

    .line 116
    .restart local v5    # "sLen":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_8

    .line 118
    iput v4, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    .line 119
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-static {v4, v7}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$102(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z

    .line 120
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-ne v6, v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    invoke-static {v4, v3}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$202(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z

    .line 122
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-static {v3}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$200(Lorg/apache/poi/ss/format/CellDateFormatter;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    invoke-static {v3, v1}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$302(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z

    .line 124
    const-string v1, "a"

    return-object v1

    .line 107
    .end local v5    # "sLen":I
    :sswitch_6
    iput v4, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    .line 108
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 109
    .local v1, "sLen":I
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$002(Lorg/apache/poi/ss/format/CellDateFormatter;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    const/16 v3, 0x30

    const/16 v4, 0x53

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 129
    .end local v1    # "sLen":I
    .restart local v5    # "sLen":I
    :cond_8
    :goto_2
    const/4 v1, 0x0

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_6
        0x41 -> :sswitch_5
        0x44 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4d -> :sswitch_2
        0x50 -> :sswitch_5
        0x53 -> :sswitch_1
        0x59 -> :sswitch_0
        0x61 -> :sswitch_5
        0x64 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6d -> :sswitch_2
        0x70 -> :sswitch_5
        0x73 -> :sswitch_1
        0x79 -> :sswitch_0
    .end sparse-switch
.end method
