.class Lcom/androguide/pimp/my/rom/TweaksMisc$1$2;
.super Ljava/lang/Object;
.source "TweaksMisc.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/TweaksMisc$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androguide/pimp/my/rom/TweaksMisc$1;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/TweaksMisc$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc$1$2;->this$1:Lcom/androguide/pimp/my/rom/TweaksMisc$1;

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1052
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method