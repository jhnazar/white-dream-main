import { useBackend } from '../backend';
import { Button, LabeledList, Section } from '../components';

export const TankDispenser = props => {
  const { act, data } = useBackend(props);
  return (
    <Section>
      <LabeledList>
        <LabeledList.Item
          label="Плазма"
          buttons={(
            <Button
              icon={data.plasma ? 'square' : 'square-o'}
              content="Выдать"
              disabled={!data.plasma}
              onClick={() => act('plasma')} />
          )}>
          {data.plasma}
        </LabeledList.Item>
        <LabeledList.Item
          label="Кислород"
          buttons={(
            <Button
              icon={data.oxygen ? 'square' : 'square-o'}
              content="Выдать"
              disabled={!data.oxygen}
              onClick={() => act('oxygen')} />
          )}>
          {data.oxygen}
        </LabeledList.Item>
      </LabeledList>
    </Section>
  );
};
