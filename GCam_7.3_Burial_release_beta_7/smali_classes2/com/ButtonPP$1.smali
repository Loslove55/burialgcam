.class Lcom/ButtonPP$1;
.super Ljava/lang/Object;
.source "ButtonPP$1.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ButtonPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ButtonPP;


# direct methods
.method constructor <init>(Lcom/ButtonPP;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ButtonPP$1;->this$0:Lcom/ButtonPP;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    sget v0, Lcom/ButtonPP;->SelState:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/ButtonPP;->Icon:[Ljava/lang/String;

    array-length v1, v1

    rem-int v0, v0, v1

    sput v0, Lcom/ButtonPP;->SelState:I

    sget-object v1, Lcom/ButtonPP;->prefString:Ljava/lang/String;

    iget-object p1, p0, Lcom/ButtonPP$1;->this$0:Lcom/ButtonPP;

    invoke-virtual {p1, v1, v0}, Lcom/ButtonPP;->setInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ButtonPP;->UpdateUi(Landroid/content/Context;)V

    return-void
.end method
