// make [0], [1], correspond to mac / win
bool dip_switch_update_kb(uint8_t index, bool active) {
    if (index == 0) {
        default_layer_set(1UL << (active ? 1 : 0));
    }
    dip_switch_update_user(index, active);

    return true;
}