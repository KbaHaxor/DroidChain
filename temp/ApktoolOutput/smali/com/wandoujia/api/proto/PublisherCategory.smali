.class public final Lcom/wandoujia/api/proto/PublisherCategory;
.super Lcom/squareup/wire/Message;
.source "PublisherCategory.java"


# static fields
.field public static final DEFAULT_DESCRIPTION:Ljava/lang/String; = ""

.field public static final DEFAULT_ID:Ljava/lang/Integer; = null

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_RANK:Ljava/lang/Integer;


# instance fields
.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final id:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final rank:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PublisherCategory;->DEFAULT_ID:Ljava/lang/Integer;

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/api/proto/PublisherCategory;->DEFAULT_RANK:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/api/proto/PublisherCategory$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 32
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherCategory$Builder;->id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherCategory;->id:Ljava/lang/Integer;

    .line 33
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherCategory$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherCategory;->name:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherCategory$Builder;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherCategory;->description:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/wandoujia/api/proto/PublisherCategory$Builder;->rank:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PublisherCategory;->rank:Ljava/lang/Integer;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/api/proto/PublisherCategory$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/wandoujia/api/proto/PublisherCategory;-><init>(Lcom/wandoujia/api/proto/PublisherCategory$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    if-ne p1, p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/api/proto/PublisherCategory;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 42
    :cond_2
    check-cast p1, Lcom/wandoujia/api/proto/PublisherCategory;

    .line 43
    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherCategory;->id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherCategory;->id:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherCategory;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherCategory;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherCategory;->name:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherCategory;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherCategory;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherCategory;->description:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherCategory;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherCategory;->rank:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/wandoujia/api/proto/PublisherCategory;->rank:Ljava/lang/Integer;

    .line 46
    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/api/proto/PublisherCategory;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 51
    iget v0, p0, Lcom/wandoujia/api/proto/PublisherCategory;->hashCode:I

    .line 52
    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherCategory;->id:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherCategory;->id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 54
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherCategory;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherCategory;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 55
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherCategory;->description:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/api/proto/PublisherCategory;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 56
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/api/proto/PublisherCategory;->rank:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/api/proto/PublisherCategory;->rank:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 57
    iput v0, p0, Lcom/wandoujia/api/proto/PublisherCategory;->hashCode:I

    .line 59
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 53
    goto :goto_0

    :cond_3
    move v0, v1

    .line 54
    goto :goto_1

    :cond_4
    move v0, v1

    .line 55
    goto :goto_2
.end method