.class final enum Lcom/wandoujia/p4/pay/model/PayMethod$5;
.super Lcom/wandoujia/p4/pay/model/PayMethod;
.source "PayMethod.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/p4/pay/model/PayMethod;-><init>(Ljava/lang/String;ILcom/wandoujia/p4/pay/model/PayMethod$1;)V

    return-void
.end method


# virtual methods
.method public final describe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "\u652f\u4ed8\u91d1\u989d\uff082 \u5143\u8d2d\u4e70 1 \u8c4c\u8c46\u5e01\uff09"

    return-object v0
.end method

.method public final title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "\u624b\u673a\u8bdd\u8d39  "

    return-object v0
.end method