.class public final enum Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;
.super Ljava/lang/Enum;
.source "NetworkListAsyncloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

.field public static final enum REFRESHING:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

.field public static final enum REFRESH_FAILED:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

.field public static final enum REFRESH_IS_SLOW:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

.field public static final enum REFRESH_SUCCESS:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 528
    new-instance v0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    const-string v1, "REFRESHING"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->REFRESHING:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    .line 529
    new-instance v0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    const-string v1, "REFRESH_IS_SLOW"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->REFRESH_IS_SLOW:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    .line 530
    new-instance v0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    const-string v1, "REFRESH_SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->REFRESH_SUCCESS:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    .line 531
    new-instance v0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    const-string v1, "REFRESH_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->REFRESH_FAILED:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    .line 527
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    sget-object v1, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->REFRESHING:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->REFRESH_IS_SLOW:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->REFRESH_SUCCESS:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->REFRESH_FAILED:Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->$VALUES:[Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 527
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;
    .locals 1
    .parameter

    .prologue
    .line 527
    const-class v0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;
    .locals 1

    .prologue
    .line 527
    sget-object v0, Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->$VALUES:[Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/fragment/NetworkListAsyncloadFragment$Message;

    return-object v0
.end method
