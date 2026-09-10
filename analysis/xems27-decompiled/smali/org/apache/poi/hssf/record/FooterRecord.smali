.class public final Lorg/apache/poi/hssf/record/FooterRecord;
.super Lorg/apache/poi/hssf/record/HeaderFooterBase;
.source "FooterRecord.java"


# static fields
.field public static final sid:S = 0x15s


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/HeaderFooterBase;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 37
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/HeaderFooterBase;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 38
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 54
    new-instance v0, Lorg/apache/poi/hssf/record/FooterRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FooterRecord;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/FooterRecord;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 50
    const/16 v0, 0x15

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 43
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[FOOTER]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    const-string v1, "    .footer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FooterRecord;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    const-string v1, "[/FOOTER]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
