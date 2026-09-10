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
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 53
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    .line 56
    iput v0, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hStart:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/ss/format/CellDateFormatter;Lorg/apache/poi/ss/format/CellDateFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/ss/format/CellDateFormatter;
    .param p2, "x1"    # Lorg/apache/poi/ss/format/CellDateFormatter$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;-><init>(Lorg/apache/poi/ss/format/CellDateFormatter;)V

    return-void
.end method


# virtual methods
.method public finish(Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "toAppendTo"    # Ljava/lang/StringBuffer;

    .prologue
    .line 134
    iget v1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hStart:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$100(Lorg/apache/poi/ss/format/CellDateFormatter;)Z

    move-result v1

    if-nez v1, :cond_0

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
    .locals 9
    .param p1, "m"    # Ljava/util/regex/Matcher;
    .param p2, "part"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/apache/poi/ss/format/CellFormatType;
    .param p4, "desc"    # Ljava/lang/StringBuffer;

    .prologue
    const/16 v8, 0x6d

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    .line 62
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 63
    .local v2, "pos":I
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 64
    .local v0, "firstCh":C
    sparse-switch v0, :sswitch_data_0

    .line 129
    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    .line 67
    :sswitch_0
    iget v4, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    if-ltz v4, :cond_2

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mLen:I

    if-ge v1, v4, :cond_1

    .line 69
    iget v4, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    add-int/2addr v4, v1

    invoke-virtual {p4, v4, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    :cond_1
    iput v7, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    .line 72
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 76
    :sswitch_1
    iput v7, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    .line 77
    iput v2, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hStart:I

    .line 78
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hLen:I

    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 83
    :sswitch_2
    iput v7, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    .line 84
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_3

    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const/16 v6, 0x45

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 91
    :sswitch_3
    iput v2, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    .line 92
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mLen:I

    .line 94
    iget v4, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->hStart:I

    if-ltz v4, :cond_4

    .line 95
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 101
    :sswitch_4
    iput v7, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    .line 102
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 103
    const-string/jumbo p2, "yyyy"

    .line 104
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 107
    :sswitch_5
    iput v7, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    .line 108
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 109
    .local v3, "sLen":I
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$002(Lorg/apache/poi/ss/format/CellDateFormatter;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    const/16 v4, 0x30

    const/16 v5, 0x53

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 116
    .end local v3    # "sLen":I
    :sswitch_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_0

    .line 118
    iput v7, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->mStart:I

    .line 119
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-static {v4, v5}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$102(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z

    .line 120
    iget-object v7, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-ne v4, v8, :cond_8

    move v4, v5

    :goto_2
    invoke-static {v7, v4}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$202(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z

    .line 122
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    iget-object v7, p0, Lorg/apache/poi/ss/format/CellDateFormatter$DatePartHandler;->this$0:Lorg/apache/poi/ss/format/CellDateFormatter;

    invoke-static {v7}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$200(Lorg/apache/poi/ss/format/CellDateFormatter;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    move v6, v5

    :cond_7
    invoke-static {v4, v6}, Lorg/apache/poi/ss/format/CellDateFormatter;->access$302(Lorg/apache/poi/ss/format/CellDateFormatter;Z)Z

    .line 124
    const-string v4, "a"

    goto/16 :goto_0

    :cond_8
    move v4, v6

    .line 120
    goto :goto_2

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_5
        0x41 -> :sswitch_6
        0x44 -> :sswitch_2
        0x48 -> :sswitch_1
        0x4d -> :sswitch_3
        0x50 -> :sswitch_6
        0x53 -> :sswitch_0
        0x59 -> :sswitch_4
        0x61 -> :sswitch_6
        0x64 -> :sswitch_2
        0x68 -> :sswitch_1
        0x6d -> :sswitch_3
        0x70 -> :sswitch_6
        0x73 -> :sswitch_0
        0x79 -> :sswitch_4
    .end sparse-switch
.end method
