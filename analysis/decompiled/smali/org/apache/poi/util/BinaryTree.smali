.class public Lorg/apache/poi/util/BinaryTree;
.super Ljava/util/AbstractMap;
.source "BinaryTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/BinaryTree$Node;,
        Lorg/apache/poi/util/BinaryTree$BinaryTreeIterator;
    }
.end annotation


# static fields
.field private static _INDEX_COUNT:I

.field private static _INDEX_SUM:I

.field static _KEY:I

.field private static _MINIMUM_INDEX:I

.field static _VALUE:I

.field private static _data_name:[Ljava/lang/String;


# instance fields
.field private final _entry_set:[Ljava/util/Set;

.field private final _key_set:[Ljava/util/Set;

.field _modifications:I

.field final _root:[Lorg/apache/poi/util/BinaryTree$Node;

.field _size:I

.field private final _value_collection:[Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    sput v2, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    .line 100
    sput v3, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    .line 101
    sget v0, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    add-int/2addr v0, v1

    sput v0, Lorg/apache/poi/util/BinaryTree;->_INDEX_SUM:I

    .line 102
    sput v2, Lorg/apache/poi/util/BinaryTree;->_MINIMUM_INDEX:I

    .line 103
    sput v4, Lorg/apache/poi/util/BinaryTree;->_INDEX_COUNT:I

    .line 104
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v2

    const-string/jumbo v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/poi/util/BinaryTree;->_data_name:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 94
    iput v2, p0, Lorg/apache/poi/util/BinaryTree;->_size:I

    .line 95
    iput v2, p0, Lorg/apache/poi/util/BinaryTree;->_modifications:I

    .line 96
    new-array v0, v4, [Ljava/util/Set;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_key_set:[Ljava/util/Set;

    .line 97
    new-array v0, v4, [Ljava/util/Set;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_entry_set:[Ljava/util/Set;

    .line 98
    new-array v0, v4, [Ljava/util/Collection;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_value_collection:[Ljava/util/Collection;

    .line 113
    new-array v0, v4, [Lorg/apache/poi/util/BinaryTree$Node;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Lorg/apache/poi/util/BinaryTree;-><init>()V

    .line 138
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree;->putAll(Ljava/util/Map;)V

    .line 139
    return-void
.end method

.method private static checkKey(Ljava/lang/Object;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    .line 1224
    sget v0, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-static {p0, v0}, Lorg/apache/poi/util/BinaryTree;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 1225
    return-void
.end method

.method private static checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1252
    invoke-static {p0}, Lorg/apache/poi/util/BinaryTree;->checkKey(Ljava/lang/Object;)V

    .line 1253
    invoke-static {p1}, Lorg/apache/poi/util/BinaryTree;->checkValue(Ljava/lang/Object;)V

    .line 1254
    return-void
.end method

.method private static checkNonNullComparable(Ljava/lang/Object;I)V
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    .line 1202
    if-nez p0, :cond_0

    .line 1204
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/apache/poi/util/BinaryTree;->_data_name:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1207
    :cond_0
    instance-of v0, p0, Ljava/lang/Comparable;

    if-nez v0, :cond_1

    .line 1209
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/apache/poi/util/BinaryTree;->_data_name:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1212
    :cond_1
    return-void
.end method

.method private static checkValue(Ljava/lang/Object;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 1237
    sget v0, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-static {p0, v0}, Lorg/apache/poi/util/BinaryTree;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 1238
    return-void
.end method

.method private static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .param p0, "o1"    # Ljava/lang/Comparable;
    .param p1, "o2"    # Ljava/lang/Comparable;

    .prologue
    .line 495
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static copyColor(Lorg/apache/poi/util/BinaryTree$Node;Lorg/apache/poi/util/BinaryTree$Node;I)V
    .locals 0
    .param p0, "from"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "to"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p2, "index"    # I

    .prologue
    .line 577
    if-eqz p1, :cond_0

    .line 579
    if-nez p0, :cond_1

    .line 583
    invoke-virtual {p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setBlack(I)V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    invoke-virtual {p1, p0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->copyColor(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_0
.end method

.method private doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Ljava/lang/Comparable;
    .param p2, "index"    # I

    .prologue
    .line 432
    invoke-static {p1, p2}, Lorg/apache/poi/util/BinaryTree;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 433
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/util/BinaryTree;->lookup(Ljava/lang/Comparable;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    .line 435
    .local v0, "node":Lorg/apache/poi/util/BinaryTree$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/poi/util/BinaryTree;->oppositeIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v1

    goto :goto_0
.end method

.method private doRedBlackDeleteFixup(Lorg/apache/poi/util/BinaryTree$Node;I)V
    .locals 3
    .param p1, "replacement_node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p2, "index"    # I

    .prologue
    .line 983
    move-object v0, p1

    .line 986
    .local v0, "current_node":Lorg/apache/poi/util/BinaryTree$Node;
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aget-object v2, v2, p2

    if-eq v0, v2, :cond_7

    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->isBlack(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 988
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->isLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 990
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->getRightChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 993
    .local v1, "sibling_node":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->isRed(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 995
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 996
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->makeRed(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 997
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/util/BinaryTree;->rotateLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 998
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->getRightChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 1001
    :cond_0
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->getLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->isBlack(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->getRightChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->isBlack(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1004
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->makeRed(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1005
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    goto :goto_0

    .line 1009
    :cond_1
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->getRightChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->isBlack(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1011
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->getLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1012
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->makeRed(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1013
    invoke-direct {p0, v1, p2}, Lorg/apache/poi/util/BinaryTree;->rotateRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1014
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->getRightChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 1018
    :cond_2
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lorg/apache/poi/util/BinaryTree;->copyColor(Lorg/apache/poi/util/BinaryTree$Node;Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1020
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1021
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->getRightChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1022
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/util/BinaryTree;->rotateLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1023
    iget-object v2, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aget-object v0, v2, p2

    goto/16 :goto_0

    .line 1028
    .end local v1    # "sibling_node":Lorg/apache/poi/util/BinaryTree$Node;
    :cond_3
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->getLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 1031
    .restart local v1    # "sibling_node":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->isRed(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1033
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1034
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->makeRed(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1035
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/util/BinaryTree;->rotateRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1036
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->getLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 1039
    :cond_4
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->getRightChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->isBlack(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->getLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->isBlack(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1042
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->makeRed(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1043
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    goto/16 :goto_0

    .line 1047
    :cond_5
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->getLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->isBlack(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1049
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->getRightChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1050
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->makeRed(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1051
    invoke-direct {p0, v1, p2}, Lorg/apache/poi/util/BinaryTree;->rotateLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1052
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->getLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 1056
    :cond_6
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lorg/apache/poi/util/BinaryTree;->copyColor(Lorg/apache/poi/util/BinaryTree$Node;Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1058
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1059
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->getLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1060
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/util/BinaryTree;->rotateRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1061
    iget-object v2, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aget-object v0, v2, p2

    goto/16 :goto_0

    .line 1065
    .end local v1    # "sibling_node":Lorg/apache/poi/util/BinaryTree$Node;
    :cond_7
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1066
    return-void
.end method

.method private doRedBlackInsert(Lorg/apache/poi/util/BinaryTree$Node;I)V
    .locals 3
    .param p1, "inserted_node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p2, "index"    # I

    .prologue
    .line 815
    move-object v0, p1

    .line 817
    .local v0, "current_node":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->makeRed(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 819
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    iget-object v2, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aget-object v2, v2, p2

    if-eq v0, v2, :cond_6

    invoke-virtual {v0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->isRed(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 821
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->isLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 823
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->getRightChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 826
    .local v1, "y":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->isRed(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 828
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 829
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 830
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->makeRed(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 831
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    goto :goto_0

    .line 835
    :cond_1
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->isRightChild(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 837
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    .line 838
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/util/BinaryTree;->rotateLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 840
    :cond_2
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 841
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->makeRed(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 842
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 844
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/util/BinaryTree;->rotateRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_0

    .line 853
    .end local v1    # "y":Lorg/apache/poi/util/BinaryTree$Node;
    :cond_3
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->getLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 856
    .restart local v1    # "y":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->isRed(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 858
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 859
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 860
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->makeRed(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 861
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    goto/16 :goto_0

    .line 865
    :cond_4
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->isLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 867
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    .line 868
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/util/BinaryTree;->rotateRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 870
    :cond_5
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 871
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->makeRed(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 872
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 874
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/util/BinaryTree;->rotateLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto/16 :goto_0

    .line 880
    .end local v1    # "y":Lorg/apache/poi/util/BinaryTree$Node;
    :cond_6
    iget-object v2, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aget-object v2, v2, p2

    invoke-static {v2, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 881
    return-void
.end method

.method private doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 3
    .param p1, "o"    # Ljava/lang/Comparable;
    .param p2, "index"    # I

    .prologue
    .line 409
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/util/BinaryTree;->lookup(Ljava/lang/Comparable;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    .line 410
    .local v0, "node":Lorg/apache/poi/util/BinaryTree$Node;
    const/4 v1, 0x0

    .line 412
    .local v1, "rval":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0, p2}, Lorg/apache/poi/util/BinaryTree;->oppositeIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v1

    .line 415
    .local v1, "rval":Ljava/lang/Comparable;
    invoke-virtual {p0, v0}, Lorg/apache/poi/util/BinaryTree;->doRedBlackDelete(Lorg/apache/poi/util/BinaryTree$Node;)V

    .line 417
    .end local v1    # "rval":Ljava/lang/Comparable;
    :cond_0
    return-object v1
.end method

.method private static getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;
    .locals 1
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .prologue
    .line 653
    invoke-static {p0, p1}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    return-object v0
.end method

.method private static getLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;
    .locals 1
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .prologue
    .line 691
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    goto :goto_0
.end method

.method private static getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;
    .locals 1
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .prologue
    .line 665
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    goto :goto_0
.end method

.method private static getRightChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;
    .locals 1
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .prologue
    .line 678
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    goto :goto_0
.end method

.method private grow()V
    .locals 1

    .prologue
    .line 1271
    invoke-direct {p0}, Lorg/apache/poi/util/BinaryTree;->modify()V

    .line 1272
    iget v0, p0, Lorg/apache/poi/util/BinaryTree;->_size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/util/BinaryTree;->_size:I

    .line 1273
    return-void
.end method

.method private insertValue(Lorg/apache/poi/util/BinaryTree$Node;)V
    .locals 5
    .param p1, "newNode"    # Lorg/apache/poi/util/BinaryTree$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1295
    iget-object v2, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    sget v3, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aget-object v1, v2, v3

    .line 1299
    .local v1, "node":Lorg/apache/poi/util/BinaryTree$Node;
    :goto_0
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v2

    sget v3, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v1, v3}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/poi/util/BinaryTree;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1301
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 1303
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot store a duplicate value (\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {p1, v4}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\") in this Map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1307
    :cond_0
    if-gez v0, :cond_2

    .line 1309
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1311
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    goto :goto_0

    .line 1315
    :cond_1
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v1, p1, v2}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1316
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1317
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/util/BinaryTree;->doRedBlackInsert(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1336
    :goto_1
    return-void

    .line 1323
    :cond_2
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1325
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    goto :goto_0

    .line 1329
    :cond_3
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v1, p1, v2}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1330
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1331
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/util/BinaryTree;->doRedBlackInsert(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_1
.end method

.method private static isBlack(Lorg/apache/poi/util/BinaryTree$Node;I)Z
    .locals 1
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .prologue
    .line 613
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->isBlack(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Z
    .locals 3
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 707
    if-nez p0, :cond_1

    .line 713
    :cond_0
    :goto_0
    return v0

    .line 710
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    .line 711
    goto :goto_0

    .line 713
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static isRed(Lorg/apache/poi/util/BinaryTree$Node;I)Z
    .locals 1
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .prologue
    .line 601
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->isRed(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isRightChild(Lorg/apache/poi/util/BinaryTree$Node;I)Z
    .locals 3
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 729
    if-nez p0, :cond_1

    .line 735
    :cond_0
    :goto_0
    return v0

    .line 732
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    .line 733
    goto :goto_0

    .line 735
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static leastNode(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;
    .locals 2
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .prologue
    .line 510
    move-object v0, p0

    .line 512
    .local v0, "rval":Lorg/apache/poi/util/BinaryTree$Node;
    if-eqz v0, :cond_0

    .line 514
    :goto_0
    invoke-virtual {v0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 516
    invoke-virtual {v0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    goto :goto_0

    .line 519
    :cond_0
    return-object v0
.end method

.method private static makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V
    .locals 0
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .prologue
    .line 638
    if-eqz p0, :cond_0

    .line 640
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->setBlack(I)V

    .line 642
    :cond_0
    return-void
.end method

.method private static makeRed(Lorg/apache/poi/util/BinaryTree$Node;I)V
    .locals 0
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .prologue
    .line 624
    if-eqz p0, :cond_0

    .line 626
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->setRed(I)V

    .line 628
    :cond_0
    return-void
.end method

.method private modify()V
    .locals 1

    .prologue
    .line 1263
    iget v0, p0, Lorg/apache/poi/util/BinaryTree;->_modifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/util/BinaryTree;->_modifications:I

    .line 1264
    return-void
.end method

.method static nextGreater(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;
    .locals 4
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .prologue
    .line 532
    const/4 v2, 0x0

    .line 534
    .local v2, "rval":Lorg/apache/poi/util/BinaryTree$Node;
    if-nez p0, :cond_0

    .line 536
    const/4 v2, 0x0

    .line 564
    :goto_0
    return-object v2

    .line 538
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 543
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/apache/poi/util/BinaryTree;->leastNode(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 555
    .local v1, "parent":Lorg/apache/poi/util/BinaryTree$Node;
    move-object v0, p0

    .line 557
    .local v0, "child":Lorg/apache/poi/util/BinaryTree$Node;
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    if-ne v0, v3, :cond_2

    .line 559
    move-object v0, v1

    .line 560
    invoke-virtual {v1, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    goto :goto_1

    .line 562
    :cond_2
    move-object v2, v1

    goto :goto_0
.end method

.method private oppositeIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 452
    sget v0, Lorg/apache/poi/util/BinaryTree;->_INDEX_SUM:I

    sub-int/2addr v0, p1

    return v0
.end method

.method private rotateLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V
    .locals 2
    .param p1, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p2, "index"    # I

    .prologue
    .line 746
    invoke-virtual {p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    .line 748
    .local v0, "right_child":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-virtual {v0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 749
    invoke-virtual {v0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 751
    invoke-virtual {v0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 753
    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 754
    invoke-virtual {p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 758
    iget-object v1, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aput-object v0, v1, p2

    .line 768
    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 769
    invoke-virtual {p1, v0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 770
    return-void

    .line 760
    :cond_1
    invoke-virtual {p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 762
    invoke-virtual {p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_0

    .line 766
    :cond_2
    invoke-virtual {p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_0
.end method

.method private rotateRight(Lorg/apache/poi/util/BinaryTree$Node;I)V
    .locals 2
    .param p1, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p2, "index"    # I

    .prologue
    .line 780
    invoke-virtual {p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    .line 782
    .local v0, "left_child":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-virtual {v0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 783
    invoke-virtual {v0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 785
    invoke-virtual {v0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 787
    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 788
    invoke-virtual {p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 792
    iget-object v1, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aput-object v0, v1, p2

    .line 802
    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 803
    invoke-virtual {p1, v0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 804
    return-void

    .line 794
    :cond_1
    invoke-virtual {p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 796
    invoke-virtual {p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_0

    .line 800
    :cond_2
    invoke-virtual {p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_0
.end method

.method private shrink()V
    .locals 1

    .prologue
    .line 1280
    invoke-direct {p0}, Lorg/apache/poi/util/BinaryTree;->modify()V

    .line 1281
    iget v0, p0, Lorg/apache/poi/util/BinaryTree;->_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/util/BinaryTree;->_size:I

    .line 1282
    return-void
.end method

.method private swapPosition(Lorg/apache/poi/util/BinaryTree$Node;Lorg/apache/poi/util/BinaryTree$Node;I)V
    .locals 11
    .param p1, "x"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p2, "y"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p3, "index"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1081
    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 1082
    .local v1, "x_old_parent":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    .line 1083
    .local v0, "x_old_left_child":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    .line 1084
    .local v2, "x_old_right_child":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v5

    .line 1085
    .local v5, "y_old_parent":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v4

    .line 1086
    .local v4, "y_old_left_child":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v6

    .line 1087
    .local v6, "y_old_right_child":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v10

    invoke-virtual {v10, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v10

    if-ne p1, v10, :cond_5

    move v3, v8

    .line 1090
    .local v3, "x_was_left_child":Z
    :goto_0
    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v10

    invoke-virtual {v10, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v10

    if-ne p2, v10, :cond_6

    move v7, v8

    .line 1095
    .local v7, "y_was_left_child":Z
    :goto_1
    if-ne p1, v5, :cond_8

    .line 1097
    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1098
    if-eqz v7, :cond_7

    .line 1100
    invoke-virtual {p2, p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1101
    invoke-virtual {p2, v2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1126
    :goto_2
    if-ne p2, v1, :cond_c

    .line 1128
    invoke-virtual {p2, p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1129
    if-eqz v3, :cond_b

    .line 1131
    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1132
    invoke-virtual {p1, v6, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1159
    :goto_3
    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1161
    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v8

    invoke-virtual {v8, p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1163
    :cond_0
    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1165
    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v8

    invoke-virtual {v8, p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1167
    :cond_1
    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1169
    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1171
    :cond_2
    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1173
    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1175
    :cond_3
    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->swapColors(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1178
    iget-object v8, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aget-object v8, v8, p3

    if-ne v8, p1, :cond_f

    .line 1180
    iget-object v8, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aput-object p2, v8, p3

    .line 1186
    :cond_4
    :goto_4
    return-void

    .end local v3    # "x_was_left_child":Z
    .end local v7    # "y_was_left_child":Z
    :cond_5
    move v3, v9

    .line 1087
    goto :goto_0

    .restart local v3    # "x_was_left_child":Z
    :cond_6
    move v7, v9

    .line 1090
    goto :goto_1

    .line 1105
    .restart local v7    # "y_was_left_child":Z
    :cond_7
    invoke-virtual {p2, p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1106
    invoke-virtual {p2, v0, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_2

    .line 1111
    :cond_8
    invoke-virtual {p1, v5, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1112
    if-eqz v5, :cond_9

    .line 1114
    if-eqz v7, :cond_a

    .line 1116
    invoke-virtual {v5, p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1123
    :cond_9
    :goto_5
    invoke-virtual {p2, v0, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1124
    invoke-virtual {p2, v2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_2

    .line 1120
    :cond_a
    invoke-virtual {v5, p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_5

    .line 1136
    :cond_b
    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1137
    invoke-virtual {p1, v4, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_3

    .line 1142
    :cond_c
    invoke-virtual {p2, v1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1143
    if-eqz v1, :cond_d

    .line 1145
    if-eqz v3, :cond_e

    .line 1147
    invoke-virtual {v1, p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1154
    :cond_d
    :goto_6
    invoke-virtual {p1, v4, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1155
    invoke-virtual {p1, v6, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_3

    .line 1151
    :cond_e
    invoke-virtual {v1, p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_6

    .line 1182
    :cond_f
    iget-object v8, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aget-object v8, v8, p3

    if-ne v8, p2, :cond_4

    .line 1184
    iget-object v8, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aput-object p1, v8, p3

    goto :goto_4
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1514
    invoke-direct {p0}, Lorg/apache/poi/util/BinaryTree;->modify()V

    .line 1515
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/BinaryTree;->_size:I

    .line 1516
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    aput-object v2, v0, v1

    .line 1517
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aput-object v2, v0, v1

    .line 1518
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 1368
    invoke-static {p1}, Lorg/apache/poi/util/BinaryTree;->checkKey(Ljava/lang/Object;)V

    .line 1369
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "key":Ljava/lang/Object;
    sget v0, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/util/BinaryTree;->lookup(Ljava/lang/Comparable;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1383
    invoke-static {p1}, Lorg/apache/poi/util/BinaryTree;->checkValue(Ljava/lang/Object;)V

    .line 1384
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "value":Ljava/lang/Object;
    sget v0, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/util/BinaryTree;->lookup(Ljava/lang/Comparable;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method doRedBlackDelete(Lorg/apache/poi/util/BinaryTree$Node;)V
    .locals 4
    .param p1, "deleted_node"    # Lorg/apache/poi/util/BinaryTree$Node;

    .prologue
    const/4 v3, 0x0

    .line 891
    sget v0, Lorg/apache/poi/util/BinaryTree;->_MINIMUM_INDEX:I

    .local v0, "index":I
    :goto_0
    sget v2, Lorg/apache/poi/util/BinaryTree;->_INDEX_COUNT:I

    if-ge v0, v2, :cond_9

    .line 896
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 899
    invoke-static {p1, v0}, Lorg/apache/poi/util/BinaryTree;->nextGreater(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-direct {p0, v2, p1, v0}, Lorg/apache/poi/util/BinaryTree;->swapPosition(Lorg/apache/poi/util/BinaryTree$Node;Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 902
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 906
    .local v1, "replacement":Lorg/apache/poi/util/BinaryTree$Node;
    :goto_1
    if-eqz v1, :cond_5

    .line 908
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 909
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-nez v2, :cond_3

    .line 911
    iget-object v2, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aput-object v1, v2, v0

    .line 923
    :goto_2
    invoke-virtual {p1, v3, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 924
    invoke-virtual {p1, v3, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 925
    invoke-virtual {p1, v3, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 926
    invoke-static {p1, v0}, Lorg/apache/poi/util/BinaryTree;->isBlack(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 928
    invoke-direct {p0, v1, v0}, Lorg/apache/poi/util/BinaryTree;->doRedBlackDeleteFixup(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 891
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 902
    .end local v1    # "replacement":Lorg/apache/poi/util/BinaryTree$Node;
    :cond_2
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    goto :goto_1

    .line 913
    .restart local v1    # "replacement":Lorg/apache/poi/util/BinaryTree$Node;
    :cond_3
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-ne p1, v2, :cond_4

    .line 916
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_2

    .line 920
    :cond_4
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_2

    .line 935
    :cond_5
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-nez v2, :cond_6

    .line 939
    iget-object v2, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aput-object v3, v2, v0

    goto :goto_3

    .line 945
    :cond_6
    invoke-static {p1, v0}, Lorg/apache/poi/util/BinaryTree;->isBlack(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 947
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/util/BinaryTree;->doRedBlackDeleteFixup(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 949
    :cond_7
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 951
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-ne p1, v2, :cond_8

    .line 955
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 963
    :goto_4
    invoke-virtual {p1, v3, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_3

    .line 960
    :cond_8
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_4

    .line 968
    .end local v1    # "replacement":Lorg/apache/poi/util/BinaryTree$Node;
    :cond_9
    invoke-direct {p0}, Lorg/apache/poi/util/BinaryTree;->shrink()V

    .line 969
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3

    .prologue
    .line 1663
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_entry_set:[Ljava/util/Set;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 1665
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_entry_set:[Ljava/util/Set;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    new-instance v2, Lorg/apache/poi/util/BinaryTree$6;

    invoke-direct {v2, p0}, Lorg/apache/poi/util/BinaryTree$6;-><init>(Lorg/apache/poi/util/BinaryTree;)V

    aput-object v2, v0, v1

    .line 1723
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_entry_set:[Ljava/util/Set;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public entrySetByValue()Ljava/util/Set;
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_entry_set:[Ljava/util/Set;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_entry_set:[Ljava/util/Set;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    new-instance v2, Lorg/apache/poi/util/BinaryTree$1;

    invoke-direct {v2, p0}, Lorg/apache/poi/util/BinaryTree$1;-><init>(Lorg/apache/poi/util/BinaryTree;)V

    aput-object v2, v0, v1

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_entry_set:[Ljava/util/Set;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 1403
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "key":Ljava/lang/Object;
    sget v0, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/util/BinaryTree;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKeyForValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 157
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "value":Ljava/lang/Object;
    sget v0, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/util/BinaryTree;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3

    .prologue
    .line 1534
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_key_set:[Ljava/util/Set;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 1536
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_key_set:[Ljava/util/Set;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    new-instance v2, Lorg/apache/poi/util/BinaryTree$4;

    invoke-direct {v2, p0}, Lorg/apache/poi/util/BinaryTree$4;-><init>(Lorg/apache/poi/util/BinaryTree;)V

    aput-object v2, v0, v1

    .line 1573
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_key_set:[Ljava/util/Set;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public keySetByValue()Ljava/util/Set;
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_key_set:[Ljava/util/Set;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_key_set:[Ljava/util/Set;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    new-instance v2, Lorg/apache/poi/util/BinaryTree$2;

    invoke-direct {v2, p0}, Lorg/apache/poi/util/BinaryTree$2;-><init>(Lorg/apache/poi/util/BinaryTree;)V

    aput-object v2, v0, v1

    .line 316
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_key_set:[Ljava/util/Set;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public lookup(Ljava/lang/Comparable;I)Lorg/apache/poi/util/BinaryTree$Node;
    .locals 4
    .param p1, "data"    # Ljava/lang/Comparable;
    .param p2, "index"    # I

    .prologue
    .line 466
    const/4 v2, 0x0

    .line 467
    .local v2, "rval":Lorg/apache/poi/util/BinaryTree$Node;
    iget-object v3, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aget-object v1, v3, p2

    .line 469
    .local v1, "node":Lorg/apache/poi/util/BinaryTree$Node;
    :goto_0
    if-eqz v1, :cond_0

    .line 471
    invoke-virtual {v1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/apache/poi/util/BinaryTree;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 473
    .local v0, "cmp":I
    if-nez v0, :cond_1

    .line 475
    move-object v2, v1

    .line 481
    .end local v0    # "cmp":I
    :cond_0
    return-object v2

    .line 478
    .restart local v0    # "cmp":I
    :cond_1
    if-gez v0, :cond_2

    invoke-virtual {v1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 480
    :goto_1
    goto :goto_0

    .line 478
    :cond_2
    invoke-virtual {v1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    goto :goto_1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1430
    invoke-static {p1, p2}, Lorg/apache/poi/util/BinaryTree;->checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1431
    iget-object v4, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    sget v5, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    aget-object v2, v4, v5

    .line 1433
    .local v2, "node":Lorg/apache/poi/util/BinaryTree$Node;
    if-nez v2, :cond_1

    .line 1435
    new-instance v3, Lorg/apache/poi/util/BinaryTree$Node;

    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Comparable;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {v3, p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1437
    .local v3, "root":Lorg/apache/poi/util/BinaryTree$Node;
    iget-object v4, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    sget v5, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    aput-object v3, v4, v5

    .line 1438
    iget-object v4, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    sget v5, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aput-object v3, v4, v5

    .line 1439
    invoke-direct {p0}, Lorg/apache/poi/util/BinaryTree;->grow()V

    .line 1493
    .end local v3    # "root":Lorg/apache/poi/util/BinaryTree$Node;
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 1453
    .local v0, "cmp":I
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    if-gez v0, :cond_3

    .line 1455
    sget v4, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v2, v4}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1457
    sget v4, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v2, v4}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    .end local v0    # "cmp":I
    :cond_1
    :goto_1
    move-object v4, p1

    .line 1445
    check-cast v4, Ljava/lang/Comparable;

    sget v5, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v2, v5}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/poi/util/BinaryTree;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1447
    .restart local v0    # "cmp":I
    if-nez v0, :cond_0

    .line 1449
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot store a duplicate key (\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\") in this Map"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1461
    :cond_2
    new-instance v1, Lorg/apache/poi/util/BinaryTree$Node;

    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Comparable;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {v1, p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1464
    .local v1, "newNode":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-direct {p0, v1}, Lorg/apache/poi/util/BinaryTree;->insertValue(Lorg/apache/poi/util/BinaryTree$Node;)V

    .line 1465
    sget v4, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v2, v1, v4}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1466
    sget v4, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v1, v2, v4}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1467
    sget v4, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-direct {p0, v1, v4}, Lorg/apache/poi/util/BinaryTree;->doRedBlackInsert(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1468
    invoke-direct {p0}, Lorg/apache/poi/util/BinaryTree;->grow()V

    goto :goto_0

    .line 1474
    .end local v1    # "newNode":Lorg/apache/poi/util/BinaryTree$Node;
    .restart local p1    # "key":Ljava/lang/Object;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    sget v4, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v2, v4}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1476
    sget v4, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v2, v4}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    goto :goto_1

    .line 1480
    :cond_4
    new-instance v1, Lorg/apache/poi/util/BinaryTree$Node;

    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Comparable;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {v1, p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1483
    .restart local v1    # "newNode":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-direct {p0, v1}, Lorg/apache/poi/util/BinaryTree;->insertValue(Lorg/apache/poi/util/BinaryTree$Node;)V

    .line 1484
    sget v4, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v2, v1, v4}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1485
    sget v4, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v1, v2, v4}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1486
    sget v4, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-direct {p0, v1, v4}, Lorg/apache/poi/util/BinaryTree;->doRedBlackInsert(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1487
    invoke-direct {p0}, Lorg/apache/poi/util/BinaryTree;->grow()V

    goto/16 :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1506
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "key":Ljava/lang/Object;
    sget v0, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/util/BinaryTree;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 170
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "value":Ljava/lang/Object;
    sget v0, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/util/BinaryTree;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1349
    iget v0, p0, Lorg/apache/poi/util/BinaryTree;->_size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 1591
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_value_collection:[Ljava/util/Collection;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 1593
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_value_collection:[Ljava/util/Collection;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    new-instance v2, Lorg/apache/poi/util/BinaryTree$5;

    invoke-direct {v2, p0}, Lorg/apache/poi/util/BinaryTree$5;-><init>(Lorg/apache/poi/util/BinaryTree;)V

    aput-object v2, v0, v1

    .line 1645
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_value_collection:[Ljava/util/Collection;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public valuesByValue()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_value_collection:[Ljava/util/Collection;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_value_collection:[Ljava/util/Collection;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    new-instance v2, Lorg/apache/poi/util/BinaryTree$3;

    invoke-direct {v2, p0}, Lorg/apache/poi/util/BinaryTree$3;-><init>(Lorg/apache/poi/util/BinaryTree;)V

    aput-object v2, v0, v1

    .line 394
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_value_collection:[Ljava/util/Collection;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aget-object v0, v0, v1

    return-object v0
.end method
