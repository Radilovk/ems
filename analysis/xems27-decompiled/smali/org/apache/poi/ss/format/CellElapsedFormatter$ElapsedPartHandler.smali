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

    .line 70
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;->this$0:Lorg/apache/poi/ss/format/CellElapsedFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/ss/format/CellElapsedFormatter;Lorg/apache/poi/ss/format/CellElapsedFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/ss/format/CellElapsedFormatter;
    .param p2, "x1"    # Lorg/apache/poi/ss/format/CellElapsedFormatter$1;

    .line 70
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;-><init>(Lorg/apache/poi/ss/format/CellElapsedFormatter;)V

    return-void
.end method


# virtual methods
.method public handlePart(Ljava/util/regex/Matcher;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 6
    .param p1, "m"    # Ljava/util/regex/Matcher;
    .param p2, "part"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/apache/poi/ss/format/CellFormatType;
    .param p4, "desc"    # Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 80
    .local v0, "pos":I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 81
    .local v2, "firstCh":C
    const/16 v3, 0xa

    if-eq v2, v3, :cond_9

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-eq v2, v3, :cond_7

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_6

    const/16 v3, 0x30

    if-eq v2, v3, :cond_5

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_4

    const/16 v3, 0x68

    if-eq v2, v3, :cond_5

    const/16 v3, 0x6d

    if-eq v2, v3, :cond_5

    const/16 v3, 0x73

    if-eq v2, v3, :cond_5

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 109
    .local v1, "specLen":I
    :cond_0
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 110
    goto :goto_0

    .line 83
    .end local v1    # "specLen":I
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;->this$0:Lorg/apache/poi/ss/format/CellElapsedFormatter;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->access$000(Lorg/apache/poi/ss/format/CellElapsedFormatter;)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    move-result-object v1

    if-nez v1, :cond_3

    .line 88
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 90
    .restart local v1    # "specLen":I
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;->this$0:Lorg/apache/poi/ss/format/CellElapsedFormatter;

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v3, v5, v0, v1}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->access$100(Lorg/apache/poi/ss/format/CellElapsedFormatter;CII)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->access$002(Lorg/apache/poi/ss/format/CellElapsedFormatter;Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    .line 91
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 86
    .end local v1    # "specLen":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Duplicate \'[\' times in format"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    .restart local v1    # "specLen":I
    :cond_4
    const/4 v3, 0x0

    return-object v3

    .line 81
    .end local v1    # "specLen":I
    :cond_5
    move v3, v1

    .line 97
    .local v3, "specLen":I
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 98
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$ElapsedPartHandler;->this$0:Lorg/apache/poi/ss/format/CellElapsedFormatter;

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v1, v0, v5}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->access$100(Lorg/apache/poi/ss/format/CellElapsedFormatter;CII)Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;

    .line 99
    return-object p2

    .line 113
    .end local v3    # "specLen":I
    .restart local v1    # "specLen":I
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_8

    .line 114
    invoke-static {p2}, Lorg/apache/poi/ss/format/CellFormatPart;->expandChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 105
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 106
    nop

    .line 122
    .end local v1    # "specLen":I
    :cond_8
    :goto_0
    invoke-static {}, Lorg/apache/poi/ss/format/CellElapsedFormatter;->access$200()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v3, "%%"

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 102
    .restart local v1    # "specLen":I
    :cond_9
    const-string v3, "%n"

    return-object v3
.end method
