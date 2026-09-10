.class Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;
.super Ljava/lang/Object;
.source "CellNumberFormatter.java"

# interfaces
.implements Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/format/CellNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumPartHandler"
.end annotation


# instance fields
.field private insertSignForExponent:C

.field final synthetic this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;


# direct methods
.method private constructor <init>(Lorg/apache/poi/ss/format/CellNumberFormatter;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;
    .param p2, "x1"    # Lorg/apache/poi/ss/format/CellNumberFormatter$1;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter;)V

    return-void
.end method


# virtual methods
.method public handlePart(Ljava/util/regex/Matcher;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 10
    .param p1, "m"    # Ljava/util/regex/Matcher;
    .param p2, "part"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/apache/poi/ss/format/CellFormatType;
    .param p4, "desc"    # Ljava/lang/StringBuffer;

    .prologue
    const/16 v9, 0x2e

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 186
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 187
    .local v3, "pos":I
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 188
    .local v1, "firstCh":C
    sparse-switch v1, :sswitch_data_0

    .line 239
    const/4 p2, 0x0

    .line 241
    .end local p2    # "part":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 194
    .restart local p2    # "part":Ljava/lang/String;
    :sswitch_0
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$200(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 195
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    new-instance v6, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-direct {v6, v9, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    invoke-static {v5, v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$202(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->insertSignForExponent:C

    .line 197
    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 204
    :sswitch_1
    iget-char v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->insertSignForExponent:C

    if-eqz v4, :cond_1

    .line 205
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget-char v6, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->insertSignForExponent:C

    invoke-direct {v5, v6, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-char v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->insertSignForExponent:C

    invoke-virtual {p4, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 207
    iput-char v7, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->insertSignForExponent:C

    .line 208
    add-int/lit8 v3, v3, 0x1

    .line 210
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 211
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 212
    .local v0, "ch":C
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    add-int v6, v3, v2

    invoke-direct {v5, v0, v6}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 217
    .end local v0    # "ch":C
    .end local v2    # "i":I
    :sswitch_2
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$400(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 218
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    new-instance v6, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-direct {v6, v9, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    invoke-static {v5, v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$402(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 223
    :sswitch_3
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$500(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 224
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    iget-object v5, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$700(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$602(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 227
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$600(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$800(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 228
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v4, v8}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$902(Lorg/apache/poi/ss/format/CellNumberFormatter;Z)Z

    .line 229
    :cond_2
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    new-instance v6, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-direct {v6, v9, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    invoke-static {v5, v6}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$502(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 235
    :sswitch_4
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    invoke-static {v4, v6, v7}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$1034(Lorg/apache/poi/ss/format/CellNumberFormatter;D)D

    goto/16 :goto_0

    .line 188
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_1
        0x25 -> :sswitch_4
        0x2e -> :sswitch_2
        0x2f -> :sswitch_3
        0x30 -> :sswitch_1
        0x3f -> :sswitch_1
        0x45 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method
