.class Lorg/apache/poi/hssf/record/SSTDeserializer;
.super Ljava/lang/Object;
.source "SSTDeserializer.java"


# static fields
.field private static logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private strings:Lorg/apache/poi/util/IntMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/util/IntMapper<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

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
            "Lorg/apache/poi/util/IntMapper<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;)V"
        }
    .end annotation

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
            "Lorg/apache/poi/util/IntMapper<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ")V"
        }
    .end annotation

    .line 65
    .local p0, "strings":Lorg/apache/poi/util/IntMapper;, "Lorg/apache/poi/util/IntMapper<Lorg/apache/poi/hssf/record/common/UnicodeString;>;"
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/IntMapper;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method


# virtual methods
.method public manufactureStrings(ILorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 5
    .param p1, "stringCount"    # I
    .param p2, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 53
    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    sget-object v1, Lorg/apache/poi/hssf/record/SSTDeserializer;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ran out of data before creating all the strings! String at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 55
    new-instance v1, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-direct {v1, v4}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    .local v1, "str":Lorg/apache/poi/hssf/record/common/UnicodeString;
    goto :goto_1

    .line 57
    .end local v1    # "str":Lorg/apache/poi/hssf/record/common/UnicodeString;
    :cond_0
    new-instance v1, Lorg/apache/poi/hssf/record/common/UnicodeString;

    invoke-direct {v1, p2}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 59
    .restart local v1    # "str":Lorg/apache/poi/hssf/record/common/UnicodeString;
    :goto_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/SSTDeserializer;->strings:Lorg/apache/poi/util/IntMapper;

    invoke-static {v2, v1}, Lorg/apache/poi/hssf/record/SSTDeserializer;->addToStringTable(Lorg/apache/poi/util/IntMapper;Lorg/apache/poi/hssf/record/common/UnicodeString;)V

    .line 50
    .end local v1    # "str":Lorg/apache/poi/hssf/record/common/UnicodeString;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
