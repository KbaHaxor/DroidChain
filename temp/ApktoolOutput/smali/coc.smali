.class final Lcoc;
.super Ljava/lang/Object;
.source "AvatarUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcoa;


# direct methods
.method constructor <init>(Lcoa;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcoc;->a:Lcoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcoc;->a:Lcoa;

    iget-object v0, v0, Lcoa;->b:Lcoe;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcoe;->a(Ljava/lang/String;)V

    .line 233
    return-void
.end method