.class public Lorg/apache/poi/ss/format/CellFormat;
.super Ljava/lang/Object;
.source "CellFormat.java"


# static fields
.field private static final DEFAULT_TEXT_FORMAT:Lorg/apache/poi/ss/format/CellFormatPart;

.field public static final GENERAL_FORMAT:Lorg/apache/poi/ss/format/CellFormat;

.field private static final INVALID_VALUE_FOR_FORMAT:Ljava/lang/String; = "###############################################################################################################################################################################################################################################################"

.field private static final ONE_PART:Ljava/util/regex/Pattern;

.field private static QUOTE:Ljava/lang/String;

.field private static final formatCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/format/CellFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final format:Ljava/lang/String;

.field private final formatPartCount:I

.field private final negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

.field private final posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

.field private final textFmt:Lorg/apache/poi/ss/format/CellFormatPart;

.field private final zeroNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/poi/ss/format/CellFormatPart;->FORMAT_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(;|$)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellFormat;->ONE_PART:Ljava/util/regex/Pattern;

    .line 86
    new-instance v0, Lorg/apache/poi/ss/format/CellFormatPart;

    const-string v1, "@"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/format/CellFormatPart;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/format/CellFormat;->DEFAULT_TEXT_FORMAT:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 101
    const-string v0, "\""

    sput-object v0, Lorg/apache/poi/ss/format/CellFormat;->QUOTE:Ljava/lang/String;

    .line 107
    new-instance v0, Lorg/apache/poi/ss/format/CellFormat$1;

    const-string v1, "General"

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/format/CellFormat$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/format/CellFormat;->GENERAL_FORMAT:Lorg/apache/poi/ss/format/CellFormat;

    .line 116
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/format/CellFormat;->formatCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->format:Ljava/lang/String;

    .line 146
    sget-object v4, Lorg/apache/poi/ss/format/CellFormat;->ONE_PART:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 147
    .local v1, "m":Ljava/util/regex/Matcher;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v2, "parts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/ss/format/CellFormatPart;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "valueDesc":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 157
    :cond_0
    new-instance v4, Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-direct {v4, v3}, Lorg/apache/poi/ss/format/CellFormatPart;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v3    # "valueDesc":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lorg/apache/poi/ss/format/CellFormatter;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/ss/format/CellFormatter;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/ss/format/CellFormat;->formatPartCount:I

    .line 167
    iget v4, p0, Lorg/apache/poi/ss/format/CellFormat;->formatPartCount:I

    packed-switch v4, :pswitch_data_0

    .line 188
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 189
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 190
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->zeroNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 191
    const/4 v4, 0x3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->textFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 194
    :goto_1
    return-void

    .line 169
    :pswitch_0
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 170
    iput-object v9, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 171
    iput-object v9, p0, Lorg/apache/poi/ss/format/CellFormat;->zeroNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 172
    sget-object v4, Lorg/apache/poi/ss/format/CellFormat;->DEFAULT_TEXT_FORMAT:Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->textFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    goto :goto_1

    .line 175
    :pswitch_1
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 176
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 177
    iput-object v9, p0, Lorg/apache/poi/ss/format/CellFormat;->zeroNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 178
    sget-object v4, Lorg/apache/poi/ss/format/CellFormat;->DEFAULT_TEXT_FORMAT:Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->textFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    goto :goto_1

    .line 181
    :pswitch_2
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 182
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 183
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->zeroNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 184
    sget-object v4, Lorg/apache/poi/ss/format/CellFormat;->DEFAULT_TEXT_FORMAT:Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->textFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    goto :goto_1

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormat$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/poi/ss/format/CellFormat$1;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellFormat;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private apply(Ljava/util/Date;D)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "numericValue"    # D

    .prologue
    .line 244
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/format/CellFormat;->getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v0

    return-object v0
.end method

.method private apply(Ljavax/swing/JLabel;Ljava/util/Date;D)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 3
    .param p1, "label"    # Ljavax/swing/JLabel;
    .param p2, "date"    # Ljava/util/Date;
    .param p3, "numericValue"    # D

    .prologue
    .line 309
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/util/Date;D)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v0

    .line 310
    .local v0, "result":Lorg/apache/poi/ss/format/CellFormatResult;
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellFormatResult;->text:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 311
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellFormatResult;->textColor:Ljava/awt/Color;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellFormatResult;->textColor:Ljava/awt/Color;

    invoke-virtual {p1, v1}, Ljavax/swing/JLabel;->setForeground(Ljava/awt/Color;)V

    .line 314
    :cond_0
    return-object v0
.end method

.method private getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v4, 0x0

    .line 360
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_f

    .line 362
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 364
    .local v0, "val":D
    iget v2, p0, Lorg/apache/poi/ss/format/CellFormat;->formatPartCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 365
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    .line 391
    :goto_0
    return-object v2

    .line 369
    :cond_1
    new-instance v2, Lorg/apache/poi/ss/format/CellFormatPart;

    const-string v3, "General"

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/format/CellFormatPart;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_2
    iget v2, p0, Lorg/apache/poi/ss/format/CellFormat;->formatPartCount:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 372
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result v2

    if-nez v2, :cond_3

    cmpl-double v2, v0, v4

    if-gez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 374
    :cond_4
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    goto :goto_0

    .line 375
    :cond_5
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 377
    :cond_6
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    goto :goto_0

    .line 380
    :cond_7
    new-instance v2, Lorg/apache/poi/ss/format/CellFormatPart;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/apache/poi/ss/format/CellFormat;->QUOTE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "###############################################################################################################################################################################################################################################################"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/ss/format/CellFormat;->QUOTE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/format/CellFormatPart;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_8
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result v2

    if-nez v2, :cond_9

    cmpl-double v2, v0, v4

    if-gtz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 385
    :cond_a
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    goto/16 :goto_0

    .line 386
    :cond_b
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result v2

    if-nez v2, :cond_c

    cmpg-double v2, v0, v4

    if-ltz v2, :cond_d

    :cond_c
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v2}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 388
    :cond_d
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    goto/16 :goto_0

    .line 391
    :cond_e
    iget-object v2, p0, Lorg/apache/poi/ss/format/CellFormat;->zeroNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    goto/16 :goto_0

    .line 395
    .end local v0    # "val":D
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "value must be a Number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormat;
    .locals 2
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-object v1, Lorg/apache/poi/ss/format/CellFormat;->formatCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/format/CellFormat;

    .line 129
    .local v0, "fmt":Lorg/apache/poi/ss/format/CellFormat;
    if-nez v0, :cond_1

    .line 130
    const-string v1, "General"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/format/CellFormat;->GENERAL_FORMAT:Lorg/apache/poi/ss/format/CellFormat;

    .line 134
    :goto_0
    sget-object v1, Lorg/apache/poi/ss/format/CellFormat;->formatCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_1
    return-object v0

    .line 133
    :cond_2
    new-instance v0, Lorg/apache/poi/ss/format/CellFormat;

    .end local v0    # "fmt":Lorg/apache/poi/ss/format/CellFormat;
    invoke-direct {v0, p0}, Lorg/apache/poi/ss/format/CellFormat;-><init>(Ljava/lang/String;)V

    .restart local v0    # "fmt":Lorg/apache/poi/ss/format/CellFormat;
    goto :goto_0
.end method

.method public static ultimateType(Lorg/apache/poi/ss/usermodel/Cell;)I
    .locals 2
    .param p0, "cell"    # Lorg/apache/poi/ss/usermodel/Cell;

    .prologue
    .line 411
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()I

    move-result v0

    .line 412
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 413
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultType()I

    move-result v0

    .line 415
    .end local v0    # "type":I
    :cond_0
    return v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 206
    instance-of v4, p1, Ljava/lang/Number;

    if-eqz v4, :cond_4

    move-object v0, p1

    .line 207
    check-cast v0, Ljava/lang/Number;

    .line 208
    .local v0, "num":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 209
    .local v2, "val":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_3

    iget v4, p0, Lorg/apache/poi/ss/format/CellFormat;->formatPartCount:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v4}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v4}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget v4, p0, Lorg/apache/poi/ss/format/CellFormat;->formatPartCount:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v4}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget v4, p0, Lorg/apache/poi/ss/format/CellFormat;->formatPartCount:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v4}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result v4

    if-nez v4, :cond_3

    .line 217
    :cond_2
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    neg-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v4

    .line 231
    .end local v0    # "num":Ljava/lang/Number;
    .end local v2    # "val":D
    :goto_0
    return-object v4

    .line 219
    .restart local v0    # "num":Ljava/lang/Number;
    .restart local v2    # "val":D
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/poi/ss/format/CellFormat;->getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v4

    goto :goto_0

    .line 221
    .end local v0    # "num":Ljava/lang/Number;
    .end local v2    # "val":D
    :cond_4
    instance-of v4, p1, Ljava/util/Date;

    if-eqz v4, :cond_6

    move-object v4, p1

    .line 224
    check-cast v4, Ljava/util/Date;

    invoke-static {v4}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 225
    .local v1, "numericValue":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 226
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/format/CellFormat;->getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v4

    goto :goto_0

    .line 228
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "value not a valid Excel date"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 231
    .end local v1    # "numericValue":Ljava/lang/Double;
    :cond_6
    iget-object v4, p0, Lorg/apache/poi/ss/format/CellFormat;->textFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v4, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v4

    goto :goto_0
.end method

.method public apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 2
    .param p1, "label"    # Ljavax/swing/JLabel;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 290
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v0

    .line 291
    .local v0, "result":Lorg/apache/poi/ss/format/CellFormatResult;
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellFormatResult;->text:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 292
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellFormatResult;->textColor:Ljava/awt/Color;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, v0, Lorg/apache/poi/ss/format/CellFormatResult;->textColor:Ljava/awt/Color;

    invoke-virtual {p1, v1}, Ljavax/swing/JLabel;->setForeground(Ljava/awt/Color;)V

    .line 295
    :cond_0
    return-object v0
.end method

.method public apply(Ljavax/swing/JLabel;Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 4
    .param p1, "label"    # Ljavax/swing/JLabel;
    .param p2, "c"    # Lorg/apache/poi/ss/usermodel/Cell;

    .prologue
    .line 327
    invoke-static {p2}, Lorg/apache/poi/ss/format/CellFormat;->ultimateType(Lorg/apache/poi/ss/usermodel/Cell;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 346
    :pswitch_0
    const-string v1, "?"

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v1

    :goto_0
    return-object v1

    .line 329
    :pswitch_1
    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v1

    goto :goto_0

    .line 331
    :pswitch_2
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v1

    goto :goto_0

    .line 333
    :pswitch_3
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 334
    .local v0, "value":Ljava/lang/Double;
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/format/CellFormat;->getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/format/CellFormatPart;->getCellFormatType()Lorg/apache/poi/ss/format/CellFormatType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    if-ne v1, v2, :cond_1

    .line 335
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getDateCellValue()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/util/Date;D)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v1

    goto :goto_0

    .line 338
    :cond_0
    const-string v1, "###############################################################################################################################################################################################################################################################"

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v1

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v1

    goto :goto_0

    .line 344
    .end local v0    # "value":Ljava/lang/Double;
    :pswitch_4
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v1

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public apply(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 4
    .param p1, "c"    # Lorg/apache/poi/ss/usermodel/Cell;

    .prologue
    .line 257
    invoke-static {p1}, Lorg/apache/poi/ss/format/CellFormat;->ultimateType(Lorg/apache/poi/ss/usermodel/Cell;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 276
    :pswitch_0
    const-string v1, "?"

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v1

    :goto_0
    return-object v1

    .line 259
    :pswitch_1
    const-string v1, ""

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v1

    goto :goto_0

    .line 261
    :pswitch_2
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v1

    goto :goto_0

    .line 263
    :pswitch_3
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 264
    .local v0, "value":Ljava/lang/Double;
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/format/CellFormat;->getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/format/CellFormatPart;->getCellFormatType()Lorg/apache/poi/ss/format/CellFormatType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    if-ne v1, v2, :cond_1

    .line 265
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getDateCellValue()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/util/Date;D)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v1

    goto :goto_0

    .line 268
    :cond_0
    const-string v1, "###############################################################################################################################################################################################################################################################"

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v1

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v1

    goto :goto_0

    .line 274
    .end local v0    # "value":Ljava/lang/Double;
    :pswitch_4
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v1

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 428
    if-ne p0, p1, :cond_0

    .line 429
    const/4 v1, 0x1

    .line 434
    :goto_0
    return v1

    .line 430
    :cond_0
    instance-of v1, p1, Lorg/apache/poi/ss/format/CellFormat;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 431
    check-cast v0, Lorg/apache/poi/ss/format/CellFormat;

    .line 432
    .local v0, "that":Lorg/apache/poi/ss/format/CellFormat;
    iget-object v1, p0, Lorg/apache/poi/ss/format/CellFormat;->format:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/poi/ss/format/CellFormat;->format:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 434
    .end local v0    # "that":Lorg/apache/poi/ss/format/CellFormat;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellFormat;->format:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
