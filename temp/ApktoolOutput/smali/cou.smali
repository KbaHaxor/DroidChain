.class final Lcou;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Lcpt;


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcou;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcou;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/wandoujia/appmanager/LocalAppChangedListener;->c(Ljava/lang/String;)V

    .line 175
    return-void
.end method