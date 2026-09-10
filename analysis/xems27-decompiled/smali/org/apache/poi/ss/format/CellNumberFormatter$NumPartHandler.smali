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

    .line 181
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/ss/format/CellNumberFormatter;
    .param p2, "x1"    # Lorg/apache/poi/ss/format/CellNumberFormatter$1;

    .line 181
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter;)V

    return-void
.end method


# virtual methods
.method public handlePart(Ljava/util/regex/Matcher;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 8
    .param p1, "m"    # Ljava/util/regex/Matcher;
    .param p2, "part"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/apache/poi/ss/format/CellFormatType;
    .param p4, "desc"    # Ljava/lang/StringBuffer;

    .line 186
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 187
    .local v0, "pos":I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 188
    .local v2, "firstCh":C
    const/16 v3, 0x23

    if-eq v2, v3, :cond_3

    const/16 v3, 0x25

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_3

    const/16 v3, 0x45

    const/16 v4, 0x2e

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x65

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    .line 239
    const/4 v1, 0x0

    return-object v1

    .line 223
    :pswitch_0
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$500(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 224
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$700(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$602(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    .line 227
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$600(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$800(Ljava/util/List;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 228
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v1, v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$902(Lorg/apache/poi/ss/format/CellNumberFormatter;Z)Z

    .line 229
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    new-instance v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-direct {v5, v4, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    invoke-static {v3, v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$502(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 217
    :pswitch_1
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$400(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 218
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v1}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    new-instance v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-direct {v5, v4, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    invoke-static {v3, v5}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$402(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 194
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$200(Lorg/apache/poi/ss/format/CellNumberFormatter;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 195
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v3

    iget-object v6, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    new-instance v7, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-direct {v7, v4, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    invoke-static {v6, v7}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$202(Lorg/apache/poi/ss/format/CellNumberFormatter;Lorg/apache/poi/ss/format/CellNumberFormatter$Special;)Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->insertSignForExponent:C

    .line 197
    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 235
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-static {v1, v3, v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$1034(Lorg/apache/poi/ss/format/CellNumberFormatter;D)D

    .line 236
    goto :goto_1

    .line 204
    :cond_3
    :pswitch_2
    iget-char v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->insertSignForExponent:C

    if-eqz v3, :cond_4

    .line 205
    iget-object v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v3}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget-char v5, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->insertSignForExponent:C

    invoke-direct {v4, v5, v0}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-char v3, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->insertSignForExponent:C

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 207
    iput-char v1, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->insertSignForExponent:C

    .line 208
    add-int/lit8 v0, v0, 0x1

    .line 210
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 211
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 212
    .local v3, "ch":C
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellNumberFormatter$NumPartHandler;->this$0:Lorg/apache/poi/ss/format/CellNumberFormatter;

    invoke-static {v4}, Lorg/apache/poi/ss/format/CellNumberFormatter;->access$300(Lorg/apache/poi/ss/format/CellNumberFormatter;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    add-int v6, v0, v1

    invoke-direct {v5, v3, v6}, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;-><init>(CI)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .end local v3    # "ch":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v1    # "i":I
    :cond_5
    nop

    .line 241
    :cond_6
    :goto_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
