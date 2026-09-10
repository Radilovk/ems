.class Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;
.super Ljava/lang/Object;
.source "CellElapsedFormatter.java"

# interfaces
.implements Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/format/CellElapsedFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ElapsedPartHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/ss/format/CellElapsedFormatter;


# direct methods
.method private constructor <init>(Lorg/apache/poi/ss/format/CellElapsedFormatter;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;->this$0:Lorg/apache/poi/ss/format/CellElapsedFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/ss/format/CellElapsedFormatter;Lorg/apache/poi/ss/format/CellElapsedFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/ss/format/CellElapsedFormatter;
    .param p2, "x1"    # Lorg/apache/poi/ss/format/CellElapsedFormatter$1;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;-><init>(Lorg/apache/poi/ss/format/CellElapsedFormatter;)V

    return-void
.end method


# virtual methods
.method public handlePart(Ljava/util/regex/Matcher;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 8
    .param p1, "m"    # Ljava/util/regex/Matcher;
    .param p2, "part"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/apache/poi/ss/format/CellFormatType;
    .param p4, "desc"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 79
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 80
    .local v2, "pos":I
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 81
    .local v0, "firstCh":C
    sparse-switch v0, :sswitch_data_0

    .line 122
    :cond_0
    :goto_0
    invoke-static {}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->access$200()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "%%"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p2

    .end local p2    # "part":Ljava/lang/String;
    .local v1, "part":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 83
    .end local v1    # "part":Ljava/lang/String;
    .restart local p2    # "part":Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    .line 85
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;->this$0:Lorg/apache/poi/ss/format/CellElapsedFormatter;

    invoke-static {v4}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->access$000(Lorg/apache/poi/ss/format/CellElapsedFormatter;)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 86
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicate \'[\' times in format"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 88
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v3, v4, -0x2

    .line 90
    .local v3, "specLen":I
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;->this$0:Lorg/apache/poi/ss/format/CellElapsedFormatter;

    iget-object v5, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;->this$0:Lorg/apache/poi/ss/format/CellElapsedFormatter;

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v5, v6, v2, v3}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->access$100(Lorg/apache/poi/ss/format/CellElapsedFormatter;CII)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->access$002(Lorg/apache/poi/ss/format/CellElapsedFormatter;Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    .line 91
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, p2

    .end local p2    # "part":Ljava/lang/String;
    .restart local v1    # "part":Ljava/lang/String;
    goto :goto_1

    .line 97
    .end local v1    # "part":Ljava/lang/String;
    .end local v3    # "specLen":I
    .restart local p2    # "part":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 98
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;->this$0:Lorg/apache/poi/ss/format/CellElapsedFormatter;

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v4, v5, v2, v6}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->access$100(Lorg/apache/poi/ss/format/CellElapsedFormatter;CII)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    move-object v1, p2

    .end local p2    # "part":Ljava/lang/String;
    .restart local v1    # "part":Ljava/lang/String;
    move-object v4, p2

    .line 99
    goto :goto_1

    .line 102
    .end local v1    # "part":Ljava/lang/String;
    .restart local p2    # "part":Ljava/lang/String;
    :sswitch_2
    const-string v4, "%n"

    move-object v1, p2

    .end local p2    # "part":Ljava/lang/String;
    .restart local v1    # "part":Ljava/lang/String;
    goto :goto_1

    .line 105
    .end local v1    # "part":Ljava/lang/String;
    .restart local p2    # "part":Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 106
    goto :goto_0

    .line 109
    :sswitch_4
    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 110
    goto :goto_0

    .line 113
    :sswitch_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_0

    .line 114
    invoke-static {p2}, Lorg/apache/poi/ss/format/CellFormatPart;->expandChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 119
    :sswitch_6
    const/4 v4, 0x0

    move-object v1, p2

    .end local p2    # "part":Ljava/lang/String;
    .restart local v1    # "part":Ljava/lang/String;
    goto :goto_1

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_5
        0x30 -> :sswitch_1
        0x5b -> :sswitch_0
        0x5c -> :sswitch_4
        0x5f -> :sswitch_6
        0x68 -> :sswitch_1
        0x6d -> :sswitch_1
        0x73 -> :sswitch_1
    .end sparse-switch
.end method
