.class final Ldab;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lahj;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 139
    invoke-static {p1}, Lcom/wandoujia/base/utils/FreeHttpUtils;->buildFreeURLIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
