.class Lorg/apache/poi/hssf/record/SSTDeserializer;
.super Ljava/lang/Object;
.source "SSTDeserializer.java"


# static fields
.field private static logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private strings:Lorg/apache/poi/util/IntMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/util/IntMapper",
            "<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/poi/hssf/record/SSTDeserializer;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/SSTDeserializer;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/IntMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/IntMapper",
            "<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "strings":Lorg/apache/poi/util/IntMapper;, "Lorg/apache/poi/util/IntMapper<Lorg/apache/poi/hssf/record/common/UnicodeString;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/poi/hssf/record/SSTDeserializer;->strings:Lorg/apache/poi/util/IntMapper;

    .line 41
    return-void
.end method

.method public static addToStringTable(Lorg/apache/poi/util/IntMapper;Lorg/apache/poi/hssf/record/common/UnicodeString;)V
    .locals 0
    .param p1, "string"    # Lorg/apache/poi/hssf/record/common/UnicodeString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/IntMapper",
            "<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "strings":Lorg/apache/poi/util/IntMapper;, "Lorg/apache/poi/util/IntMapper<Lorg/apache/poi/hssf/record/common/UnicodeString;>;"
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/IntMapper;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method


# virtual methods
.method public manufactureStrings(ILorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 6
    .param p1, "stringCount"    # I
    .param p2, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 53
    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    sget-object v2, Lorg/apache/poi/hssf/record/SSTDeserializer;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ran out of data before creating all the strings! String at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 55
    new-instance v1, Lorg/apache/poi/hssf/record/common/UnicodeString;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "str":Lorg/apache/poi/hssf/record/common/UnicodeString;
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/SSTDeserializer;->strings:Lorg/apache/poi/util/IntMapper;

    invoke-static {v2, v1}, Lorg/apache/poi/hssf/record/SSTDeserializer;->addToStringTable(Lorg/apache/poi/util/IntMapper;Lorg/apache/poi/hssf/record/common/UnicodeString;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "str":Lorg/apache/poi/hssf/record/common/UnicodeString;
    :cond_0
    new-instance v1, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-direct {v1, p2}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .restart local v1    # "str":Lorg/apache/poi/hssf/record/common/UnicodeString;
    goto :goto_1

    .line 61
    .end local v1    # "str":Lorg/apache/poi/hssf/record/common/UnicodeString;
    :cond_1
    return-void
.end method
