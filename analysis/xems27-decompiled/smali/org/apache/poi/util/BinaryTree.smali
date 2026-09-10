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
    .locals 2

    .line 99
    const/4 v0, 0x0

    sput v0, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    .line 100
    const/4 v1, 0x1

    sput v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    .line 101
    add-int/2addr v1, v0

    sput v1, Lorg/apache/poi/util/BinaryTree;->_INDEX_SUM:I

    .line 102
    sput v0, Lorg/apache/poi/util/BinaryTree;->_MINIMUM_INDEX:I

    .line 103
    const/4 v0, 0x2

    sput v0, Lorg/apache/poi/util/BinaryTree;->_INDEX_COUNT:I

    .line 104
    const-string v0, "key"

    const-string v1, "value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/BinaryTree;->_data_name:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 112
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/BinaryTree;->_size:I

    .line 95
    iput v0, p0, Lorg/apache/poi/util/BinaryTree;->_modifications:I

    .line 96
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/util/Set;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iput-object v2, p0, Lorg/apache/poi/util/BinaryTree;->_key_set:[Ljava/util/Set;

    .line 97
    new-array v2, v1, [Ljava/util/Set;

    aput-object v3, v2, v0

    aput-object v3, v2, v4

    iput-object v2, p0, Lorg/apache/poi/util/BinaryTree;->_entry_set:[Ljava/util/Set;

    .line 98
    new-array v2, v1, [Ljava/util/Collection;

    aput-object v3, v2, v0

    aput-object v3, v2, v4

    iput-object v2, p0, Lorg/apache/poi/util/BinaryTree;->_value_collection:[Ljava/util/Collection;

    .line 113
    new-array v1, v1, [Lorg/apache/poi/util/BinaryTree$Node;

    aput-object v3, v1, v0

    aput-object v3, v1, v4

    iput-object v1, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

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

    .line 1202
    if-eqz p0, :cond_1

    .line 1207
    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    .line 1212
    return-void

    .line 1209
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/apache/poi/util/BinaryTree;->_data_name:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1204
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/apache/poi/util/BinaryTree;->_data_name:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkValue(Ljava/lang/Object;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

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

    .line 577
    if-eqz p1, :cond_1

    .line 579
    if-nez p0, :cond_0

    .line 583
    invoke-virtual {p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setBlack(I)V

    goto :goto_0

    .line 587
    :cond_0
    invoke-virtual {p1, p0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->copyColor(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 590
    :cond_1
    :goto_0
    return-void
.end method

.method private doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Ljava/lang/Comparable;
    .param p2, "index"    # I

    .line 432
    invoke-static {p1, p2}, Lorg/apache/poi/util/BinaryTree;->checkNonNullComparable(Ljava/lang/Object;I)V

    .line 433
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/util/BinaryTree;->lookup(Ljava/lang/Comparable;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    .line 435
    .local v0, "node":Lorg/apache/poi/util/BinaryTree$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/poi/util/BinaryTree;->oppositeIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private doRedBlackDeleteFixup(Lorg/apache/poi/util/BinaryTree$Node;I)V
    .locals 3
    .param p1, "replacement_node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p2, "index"    # I

    .line 983
    move-object v0, p1

    .line 986
    .local v0, "current_node":Lorg/apache/poi/util/BinaryTree$Node;
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aget-object v1, v1, p2

    if-eq v0, v1, :cond_7

    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->isBlack(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 988
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->isLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 990
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->getRightChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

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

    goto :goto_1

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

    .line 1025
    .end local v1    # "sibling_node":Lorg/apache/poi/util/BinaryTree$Node;
    :goto_1
    goto/16 :goto_0

    .line 1028
    :cond_3
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->getLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

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

    goto :goto_2

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

    .line 1063
    .end local v1    # "sibling_node":Lorg/apache/poi/util/BinaryTree$Node;
    :goto_2
    goto/16 :goto_0

    .line 1065
    :cond_7
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1066
    return-void
.end method

.method private doRedBlackInsert(Lorg/apache/poi/util/BinaryTree$Node;I)V
    .locals 3
    .param p1, "inserted_node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p2, "index"    # I

    .line 815
    move-object v0, p1

    .line 817
    .local v0, "current_node":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->makeRed(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 819
    :goto_0
    if-eqz v0, :cond_7

    iget-object v1, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aget-object v1, v1, p2

    if-eq v0, v1, :cond_7

    invoke-virtual {v0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->isRed(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 821
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->isLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 823
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->getRightChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 826
    .local v1, "y":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->isRed(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_0

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

    goto :goto_1

    .line 835
    :cond_0
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->isRightChild(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 837
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    .line 838
    invoke-direct {p0, v0, p2}, Lorg/apache/poi/util/BinaryTree;->rotateLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 840
    :cond_1
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

    if-eqz v2, :cond_2

    .line 844
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/util/BinaryTree;->rotateRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 848
    .end local v1    # "y":Lorg/apache/poi/util/BinaryTree$Node;
    :cond_2
    :goto_1
    goto :goto_0

    .line 853
    :cond_3
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->getLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

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

    goto :goto_2

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

    if-eqz v2, :cond_6

    .line 874
    invoke-static {v0, p2}, Lorg/apache/poi/util/BinaryTree;->getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/apache/poi/util/BinaryTree;->rotateLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 878
    .end local v1    # "y":Lorg/apache/poi/util/BinaryTree$Node;
    :cond_6
    :goto_2
    goto/16 :goto_0

    .line 880
    :cond_7
    iget-object v1, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aget-object v1, v1, p2

    invoke-static {v1, p2}, Lorg/apache/poi/util/BinaryTree;->makeBlack(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 881
    return-void
.end method

.method private doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;
    .locals 3
    .param p1, "o"    # Ljava/lang/Comparable;
    .param p2, "index"    # I

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
    invoke-virtual {p0, v0}, Lorg/apache/poi/util/BinaryTree;->doRedBlackDelete(Lorg/apache/poi/util/BinaryTree$Node;)V

    .line 417
    :cond_0
    return-object v1
.end method

.method private static getGrandParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;
    .locals 1
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

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

    .line 691
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getParent(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;
    .locals 1
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .line 665
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getRightChild(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;
    .locals 1
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .line 678
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private grow()V
    .locals 1

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

    .line 1295
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aget-object v0, v0, v1

    .line 1299
    .local v0, "node":Lorg/apache/poi/util/BinaryTree$Node;
    :goto_0
    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {p1, v1}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v1

    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/poi/util/BinaryTree;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v1

    .line 1301
    .local v1, "cmp":I
    if-eqz v1, :cond_3

    .line 1307
    if-gez v1, :cond_1

    .line 1309
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1311
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    goto :goto_1

    .line 1315
    :cond_0
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v0, p1, v2}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1316
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {p1, v0, v2}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1317
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/util/BinaryTree;->doRedBlackInsert(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1318
    goto :goto_2

    .line 1323
    :cond_1
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1325
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    .line 1335
    .end local v1    # "cmp":I
    :goto_1
    goto :goto_0

    .line 1329
    .restart local v1    # "cmp":I
    :cond_2
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {v0, p1, v2}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1330
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {p1, v0, v2}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1331
    sget v2, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/util/BinaryTree;->doRedBlackInsert(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1332
    nop

    .line 1336
    .end local v1    # "cmp":I
    :goto_2
    return-void

    .line 1303
    .restart local v1    # "cmp":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot store a duplicate value (\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {p1, v4}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\") in this Map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static isBlack(Lorg/apache/poi/util/BinaryTree$Node;I)Z
    .locals 1
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .line 613
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->isBlack(I)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private static isLeftChild(Lorg/apache/poi/util/BinaryTree$Node;I)Z
    .locals 3
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .line 707
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 708
    return v0

    .line 710
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 711
    return v2

    .line 713
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isRed(Lorg/apache/poi/util/BinaryTree$Node;I)Z
    .locals 1
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .line 601
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->isRed(I)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private static isRightChild(Lorg/apache/poi/util/BinaryTree$Node;I)Z
    .locals 3
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

    .line 729
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 730
    return v0

    .line 732
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 733
    return v2

    .line 735
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static leastNode(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;
    .locals 2
    .param p0, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p1, "index"    # I

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

    .line 532
    const/4 v0, 0x0

    .line 534
    .local v0, "rval":Lorg/apache/poi/util/BinaryTree$Node;
    if-nez p0, :cond_0

    .line 536
    const/4 v0, 0x0

    goto :goto_1

    .line 538
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 543
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/poi/util/BinaryTree;->leastNode(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    goto :goto_1

    .line 554
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 555
    .local v1, "parent":Lorg/apache/poi/util/BinaryTree$Node;
    move-object v2, p0

    .line 557
    .local v2, "child":Lorg/apache/poi/util/BinaryTree$Node;
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 559
    move-object v2, v1

    .line 560
    invoke-virtual {v1, p1}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    goto :goto_0

    .line 562
    :cond_2
    move-object v0, v1

    .line 564
    .end local v1    # "parent":Lorg/apache/poi/util/BinaryTree$Node;
    .end local v2    # "child":Lorg/apache/poi/util/BinaryTree$Node;
    :goto_1
    return-object v0
.end method

.method private oppositeIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 452
    sget v0, Lorg/apache/poi/util/BinaryTree;->_INDEX_SUM:I

    sub-int/2addr v0, p1

    return v0
.end method

.method private rotateLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V
    .locals 2
    .param p1, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p2, "index"    # I

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

    goto :goto_0

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

    .line 768
    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 769
    invoke-virtual {p1, v0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 770
    return-void
.end method

.method private rotateRight(Lorg/apache/poi/util/BinaryTree$Node;I)V
    .locals 2
    .param p1, "node"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p2, "index"    # I

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

    goto :goto_0

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

    .line 802
    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 803
    invoke-virtual {p1, v0, p2}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 804
    return-void
.end method

.method private shrink()V
    .locals 1

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
    .locals 10
    .param p1, "x"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p2, "y"    # Lorg/apache/poi/util/BinaryTree$Node;
    .param p3, "index"    # I

    .line 1081
    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    .line 1082
    .local v0, "x_old_parent":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 1083
    .local v1, "x_old_left_child":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    .line 1084
    .local v2, "x_old_right_child":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    .line 1085
    .local v3, "y_old_parent":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v4

    .line 1086
    .local v4, "y_old_left_child":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v5

    .line 1087
    .local v5, "y_old_right_child":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v6

    invoke-virtual {v6, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v6

    if-ne p1, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 1090
    .local v6, "x_was_left_child":Z
    :goto_0
    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v9

    invoke-virtual {v9, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v9

    if-ne p2, v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 1095
    .local v7, "y_was_left_child":Z
    :goto_1
    if-ne p1, v3, :cond_3

    .line 1097
    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1098
    if-eqz v7, :cond_2

    .line 1100
    invoke-virtual {p2, p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1101
    invoke-virtual {p2, v2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_3

    .line 1105
    :cond_2
    invoke-virtual {p2, p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1106
    invoke-virtual {p2, v1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_3

    .line 1111
    :cond_3
    invoke-virtual {p1, v3, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1112
    if-eqz v3, :cond_5

    .line 1114
    if-eqz v7, :cond_4

    .line 1116
    invoke-virtual {v3, p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_2

    .line 1120
    :cond_4
    invoke-virtual {v3, p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1123
    :cond_5
    :goto_2
    invoke-virtual {p2, v1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1124
    invoke-virtual {p2, v2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1126
    :goto_3
    if-ne p2, v0, :cond_7

    .line 1128
    invoke-virtual {p2, p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1129
    if-eqz v6, :cond_6

    .line 1131
    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1132
    invoke-virtual {p1, v5, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_5

    .line 1136
    :cond_6
    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1137
    invoke-virtual {p1, v4, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_5

    .line 1142
    :cond_7
    invoke-virtual {p2, v0, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1143
    if-eqz v0, :cond_9

    .line 1145
    if-eqz v6, :cond_8

    .line 1147
    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_4

    .line 1151
    :cond_8
    invoke-virtual {v0, p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1154
    :cond_9
    :goto_4
    invoke-virtual {p1, v4, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1155
    invoke-virtual {p1, v5, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1159
    :goto_5
    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 1161
    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v8

    invoke-virtual {v8, p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1163
    :cond_a
    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 1165
    invoke-virtual {p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v8

    invoke-virtual {v8, p1, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1167
    :cond_b
    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 1169
    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1171
    :cond_c
    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 1173
    invoke-virtual {p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1175
    :cond_d
    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/util/BinaryTree$Node;->swapColors(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1178
    iget-object v8, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aget-object v9, v8, p3

    if-ne v9, p1, :cond_e

    .line 1180
    aput-object p2, v8, p3

    goto :goto_6

    .line 1182
    :cond_e
    aget-object v9, v8, p3

    if-ne v9, p2, :cond_f

    .line 1184
    aput-object p1, v8, p3

    .line 1186
    :cond_f
    :goto_6
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 1514
    invoke-direct {p0}, Lorg/apache/poi/util/BinaryTree;->modify()V

    .line 1515
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/BinaryTree;->_size:I

    .line 1516
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1517
    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aput-object v2, v0, v1

    .line 1518
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1368
    invoke-static {p1}, Lorg/apache/poi/util/BinaryTree;->checkKey(Ljava/lang/Object;)V

    .line 1369
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/util/BinaryTree;->lookup(Ljava/lang/Comparable;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 1383
    invoke-static {p1}, Lorg/apache/poi/util/BinaryTree;->checkValue(Ljava/lang/Object;)V

    .line 1384
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/util/BinaryTree;->lookup(Ljava/lang/Comparable;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method doRedBlackDelete(Lorg/apache/poi/util/BinaryTree$Node;)V
    .locals 4
    .param p1, "deleted_node"    # Lorg/apache/poi/util/BinaryTree$Node;

    .line 891
    sget v0, Lorg/apache/poi/util/BinaryTree;->_MINIMUM_INDEX:I

    .local v0, "index":I
    :goto_0
    sget v1, Lorg/apache/poi/util/BinaryTree;->_INDEX_COUNT:I

    if-ge v0, v1, :cond_9

    .line 896
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 899
    invoke-static {p1, v0}, Lorg/apache/poi/util/BinaryTree;->nextGreater(Lorg/apache/poi/util/BinaryTree$Node;I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lorg/apache/poi/util/BinaryTree;->swapPosition(Lorg/apache/poi/util/BinaryTree$Node;Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 902
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v1

    .line 906
    .local v1, "replacement":Lorg/apache/poi/util/BinaryTree$Node;
    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 908
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 909
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    if-nez v3, :cond_2

    .line 911
    iget-object v3, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aput-object v1, v3, v0

    goto :goto_2

    .line 913
    :cond_2
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    if-ne p1, v3, :cond_3

    .line 916
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_2

    .line 920
    :cond_3
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 923
    :goto_2
    invoke-virtual {p1, v2, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 924
    invoke-virtual {p1, v2, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 925
    invoke-virtual {p1, v2, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 926
    invoke-static {p1, v0}, Lorg/apache/poi/util/BinaryTree;->isBlack(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 928
    invoke-direct {p0, v1, v0}, Lorg/apache/poi/util/BinaryTree;->doRedBlackDeleteFixup(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_4

    .line 935
    :cond_4
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    if-nez v3, :cond_5

    .line 939
    iget-object v3, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aput-object v2, v3, v0

    goto :goto_4

    .line 945
    :cond_5
    invoke-static {p1, v0}, Lorg/apache/poi/util/BinaryTree;->isBlack(Lorg/apache/poi/util/BinaryTree$Node;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 947
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/util/BinaryTree;->doRedBlackDeleteFixup(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 949
    :cond_6
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 951
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    if-ne p1, v3, :cond_7

    .line 955
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    goto :goto_3

    .line 960
    :cond_7
    invoke-virtual {p1, v0}, Lorg/apache/poi/util/BinaryTree$Node;->getParent(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 963
    :goto_3
    invoke-virtual {p1, v2, v0}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 891
    .end local v1    # "replacement":Lorg/apache/poi/util/BinaryTree$Node;
    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 968
    .end local v0    # "index":I
    :cond_9
    invoke-direct {p0}, Lorg/apache/poi/util/BinaryTree;->shrink()V

    .line 969
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3

    .line 1663
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_entry_set:[Ljava/util/Set;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 1665
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

    .line 194
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_entry_set:[Ljava/util/Set;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 196
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
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1403
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/util/BinaryTree;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKeyForValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 157
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/util/BinaryTree;->doGet(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3

    .line 1534
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_key_set:[Ljava/util/Set;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 1536
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

    .line 277
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_key_set:[Ljava/util/Set;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 279
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

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "rval":Lorg/apache/poi/util/BinaryTree$Node;
    iget-object v1, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    aget-object v1, v1, p2

    .line 469
    .local v1, "node":Lorg/apache/poi/util/BinaryTree$Node;
    :goto_0
    if-eqz v1, :cond_2

    .line 471
    invoke-virtual {v1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/poi/util/BinaryTree;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v2

    .line 473
    .local v2, "cmp":I
    if-nez v2, :cond_0

    .line 475
    move-object v0, v1

    .line 476
    goto :goto_2

    .line 478
    :cond_0
    if-gez v2, :cond_1

    invoke-virtual {v1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p2}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v3

    :goto_1
    move-object v1, v3

    .line 480
    .end local v2    # "cmp":I
    goto :goto_0

    .line 481
    :cond_2
    :goto_2
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1430
    invoke-static {p1, p2}, Lorg/apache/poi/util/BinaryTree;->checkKeyAndValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1431
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    aget-object v0, v0, v1

    .line 1433
    .local v0, "node":Lorg/apache/poi/util/BinaryTree$Node;
    if-nez v0, :cond_0

    .line 1435
    new-instance v1, Lorg/apache/poi/util/BinaryTree$Node;

    move-object v2, p1

    check-cast v2, Ljava/lang/Comparable;

    move-object v3, p2

    check-cast v3, Ljava/lang/Comparable;

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/util/BinaryTree$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1437
    .local v1, "root":Lorg/apache/poi/util/BinaryTree$Node;
    iget-object v2, p0, Lorg/apache/poi/util/BinaryTree;->_root:[Lorg/apache/poi/util/BinaryTree$Node;

    sget v3, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    aput-object v1, v2, v3

    .line 1438
    sget v3, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aput-object v1, v2, v3

    .line 1439
    invoke-direct {p0}, Lorg/apache/poi/util/BinaryTree;->grow()V

    .line 1440
    .end local v1    # "root":Lorg/apache/poi/util/BinaryTree$Node;
    goto :goto_2

    .line 1445
    :cond_0
    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Comparable;

    sget v2, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BinaryTree$Node;->getData(I)Ljava/lang/Comparable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/poi/util/BinaryTree;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v1

    .line 1447
    .local v1, "cmp":I
    if-eqz v1, :cond_4

    .line 1453
    if-gez v1, :cond_2

    .line 1455
    sget v2, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1457
    sget v2, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BinaryTree$Node;->getLeft(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    goto :goto_1

    .line 1461
    :cond_1
    new-instance v2, Lorg/apache/poi/util/BinaryTree$Node;

    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    move-object v4, p2

    check-cast v4, Ljava/lang/Comparable;

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/util/BinaryTree$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1464
    .local v2, "newNode":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-direct {p0, v2}, Lorg/apache/poi/util/BinaryTree;->insertValue(Lorg/apache/poi/util/BinaryTree$Node;)V

    .line 1465
    sget v3, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/util/BinaryTree$Node;->setLeft(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1466
    sget v3, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v2, v0, v3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1467
    sget v3, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/util/BinaryTree;->doRedBlackInsert(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1468
    invoke-direct {p0}, Lorg/apache/poi/util/BinaryTree;->grow()V

    .line 1469
    goto :goto_2

    .line 1474
    .end local v2    # "newNode":Lorg/apache/poi/util/BinaryTree$Node;
    :cond_2
    sget v2, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1476
    sget v2, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/BinaryTree$Node;->getRight(I)Lorg/apache/poi/util/BinaryTree$Node;

    move-result-object v0

    .line 1491
    .end local v1    # "cmp":I
    :goto_1
    goto :goto_0

    .line 1480
    .restart local v1    # "cmp":I
    :cond_3
    new-instance v2, Lorg/apache/poi/util/BinaryTree$Node;

    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    move-object v4, p2

    check-cast v4, Ljava/lang/Comparable;

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/util/BinaryTree$Node;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 1483
    .restart local v2    # "newNode":Lorg/apache/poi/util/BinaryTree$Node;
    invoke-direct {p0, v2}, Lorg/apache/poi/util/BinaryTree;->insertValue(Lorg/apache/poi/util/BinaryTree$Node;)V

    .line 1484
    sget v3, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/util/BinaryTree$Node;->setRight(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1485
    sget v3, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-virtual {v2, v0, v3}, Lorg/apache/poi/util/BinaryTree$Node;->setParent(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1486
    sget v3, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/util/BinaryTree;->doRedBlackInsert(Lorg/apache/poi/util/BinaryTree$Node;I)V

    .line 1487
    invoke-direct {p0}, Lorg/apache/poi/util/BinaryTree;->grow()V

    .line 1488
    nop

    .line 1493
    .end local v1    # "cmp":I
    .end local v2    # "newNode":Lorg/apache/poi/util/BinaryTree$Node;
    :goto_2
    const/4 v1, 0x0

    return-object v1

    .line 1449
    .restart local v1    # "cmp":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot store a duplicate key (\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\") in this Map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 1506
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/util/BinaryTree;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 170
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/util/BinaryTree;->doRemove(Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1349
    iget v0, p0, Lorg/apache/poi/util/BinaryTree;->_size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .line 1591
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_value_collection:[Ljava/util/Collection;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_KEY:I

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 1593
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

    .line 340
    iget-object v0, p0, Lorg/apache/poi/util/BinaryTree;->_value_collection:[Ljava/util/Collection;

    sget v1, Lorg/apache/poi/util/BinaryTree;->_VALUE:I

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 342
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
